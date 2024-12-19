#include "args.hxx"
#include "hal/generic/FileSystemGeneric.hpp"
#include "hal/generic/SynchronousRandomDataGeneratorGeneric.hpp"
#include "hal/generic/TimerServiceGeneric.hpp"
#include "infra/timer/TimeStreaming.hpp"
#include "postmaster/flex/EchoWebSocketClientFactory.hpp"
#include "postmaster/flex/FlexHttpClient.hpp"
#include "postmaster/flex/HttpClientAuthenticationDigest.hpp"
#include "services/network/ConnectionFactoryWithNameResolver.hpp"
#include "services/network/HttpClientImpl.hpp"
#include "services/network_instantiations/NetworkAdapter.hpp"
#include "services/tracer/GlobalTracer.hpp"
#include "services/tracer/TracerOnIoOutputInfrastructure.hpp"
#include <cstdlib>

std::string Env(const char* name)
{
    auto result = std::getenv(name);
    if (result != nullptr)
        return result;
    else
        return "";
}

int main(int argc, const char* argv[], const char* env[])
{
    args::ArgumentParser parser("Firmware Lifecycle and ECHO eXchange");
    args::Group positionals(parser, "Positional arguments:");
    args::Positional<std::string> urlArgument(positionals, "url", "Postmaster url to connect to", args::Options::Required);
    args::Positional<std::string> firmwareArgument(positionals, "firmware", "Binary firmware with which the target attached to Postmaster is upgraded");
    args::Group flags(parser, "Optional flags:");
    args::ValueFlag<std::string> passwordArgument(flags, "password", "Password of Postmaster", { 'p', "password" });
    args::HelpFlag help(parser, "help", "display this help menu.", { 'h', "help" });

    try
    {
        std::string firmwareArg = Env("POSTMASTER_FIRMWARE");
        std::string urlArg = std::getenv("POSTMASTER_IP");
        std::string passwordArg = std::getenv("POSTMASTER_PASSWORD");

        if (firmwareArg.empty() && urlArg.empty())
        {
            parser.ParseCLI(argc, argv);
            firmwareArg = args::get(firmwareArgument);
            urlArg = args::get(urlArgument);
            passwordArg = args::get(passwordArgument);
        }

        static hal::TimerServiceGeneric timerService;
        static hal::SynchronousRandomDataGeneratorGeneric randomDataGenerator;
        static main_::TracerOnIoOutputInfrastructure tracer;
        static main_::NetworkAdapter network;
        static hal::FileSystemGeneric fileSystem;

        static auto firmware = !firmwareArg.empty() ? fileSystem.ReadBinaryFile(firmwareArg) : std::vector<uint8_t>{};

        static services::HttpClientConnectorWithNameResolverImpl<> connector(network.ConnectionFactoryWithNameResolver());
        static infra::BoundedString::WithStorage<512> httpUrl{ urlArg };
        static infra::BoundedString::WithStorage<512> webSocketUrl{ urlArg };
        static application::EchoWebSocketClientFactory webSocketFactory(webSocketUrl, 80, network.ConnectionFactory(), tracer.tracer);
        static services::HttpClientWebSocketInitiation webSocketInitiation(webSocketFactory, connector,
            webSocketFactory, randomDataGenerator, services::noAutoConnect);
        static application::HttpClientAuthenticationDigest::WithMaxHeaders<10> clientAuthentication{ passwordArg, randomDataGenerator };
        static services::HttpClientAuthenticationConnector clientAuthenticationConnector{ connector, clientAuthentication };
        static application::FlexHttpClient httpClient(httpUrl, 80, clientAuthenticationConnector, firmware, webSocketInitiation, tracer.tracer);

        network.ExecuteUntil([&]()
            {
                return !network.NetworkActivity() && timerService.NextTrigger() == infra::TimePoint::max();
            });
    }
    catch (const args::Help&)
    {
        std::cout << parser;
        return 1;
    }
    catch (const std::exception& ex)
    {
        std::cout << ex.what() << std::endl;
        return 1;
    }

    return 0;
}
