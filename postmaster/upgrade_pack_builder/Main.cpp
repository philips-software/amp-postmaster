#include "upgrade/pack_builder_instantiations/UpgradePackBuilderApplication.hpp"

int main(int argc, const char* argv[])
{
    application::UpgradePackBuilder::HeaderInfo header{ "Postmaster", "v0.1.0", "", 0 }; // x-release-please-version
    application::SupportedTargets supportedTargets = application::SupportedTargets::Create()
                                                         .Mandatory()
                                                         .AddHex("app");

    main_::UpgradePackBuilderApplication builder(header, supportedTargets);

    return builder.Main(argc, argv);
}
