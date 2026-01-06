#include "generated/Version.h"
#include "upgrade/pack_builder_instantiations/UpgradePackBuilderApplication.hpp"

int main(int argc, const char* argv[])
{
    application::UpgradePackBuilder::HeaderInfo header{ "Postmaster", Postmaster::generated::VERSION, "", 0 };
    application::SupportedTargets supportedTargets = application::SupportedTargets::Create()
                                                         .Mandatory()
                                                         .AddHex("app");

    main_::UpgradePackBuilderApplication builder(header, supportedTargets);

    return builder.Main(argc, argv);
}
