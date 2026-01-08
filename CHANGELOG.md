# CHANGELOG

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/) and this project adheres to [Semantic Versioning](https://semver.org/).

## unreleased

- Enabled warnings as error, requires CMake 3.24

## [0.5.0](https://github.com/philips-software/amp-postmaster/compare/v0.4.2...v0.5.0) (2026-01-08)


### Features

* **deps:** Bump the git-submodules group with 3 updates ([#157](https://github.com/philips-software/amp-postmaster/issues/157)) ([c72f827](https://github.com/philips-software/amp-postmaster/commit/c72f82746b9ce9e1db89811cab0ec1cbe0d8ef59))


### Bug Fixes

* Fill out content type and content length ([#165](https://github.com/philips-software/amp-postmaster/issues/165)) ([e9c7b0c](https://github.com/philips-software/amp-postmaster/commit/e9c7b0c233c8393ec904399f9182b687d82dedd9))
* Firmware upgrade ([#167](https://github.com/philips-software/amp-postmaster/issues/167)) ([95f315a](https://github.com/philips-software/amp-postmaster/commit/95f315a3d97898ae5ea2628a7af4c72bc2e6cbd3))
* Update display when hostname changes ([#168](https://github.com/philips-software/amp-postmaster/issues/168)) ([a214a2b](https://github.com/philips-software/amp-postmaster/commit/a214a2b18682dc2801df2f195e07964dcda485f7))

## [0.4.2](https://github.com/philips-software/amp-postmaster/compare/v0.4.1...v0.4.2) (2026-01-07)


### Bug Fixes

* Release version in upg file names ([#160](https://github.com/philips-software/amp-postmaster/issues/160)) ([20e5a0c](https://github.com/philips-software/amp-postmaster/commit/20e5a0c7634da09676dcf33ed5a433dc6a814ab6))


### Continuous Integration

* Substitute main version in upgrade pack ([e0ad9e0](https://github.com/philips-software/amp-postmaster/commit/e0ad9e03df9483b4bf938144bd519e11c37fa9e9))

## [0.4.1](https://github.com/philips-software/amp-postmaster/compare/v0.4.0...v0.4.1) (2026-01-05)


### Bug Fixes

* Create upgrade pack in release builds ([#155](https://github.com/philips-software/amp-postmaster/issues/155)) ([a97534e](https://github.com/philips-software/amp-postmaster/commit/a97534e0ec7223d1838d8aff6ec41813f2d24187))

## [0.4.0](https://github.com/philips-software/amp-postmaster/compare/v0.3.1...v0.4.0) (2026-01-05)


### Features

* **deps:** Bump the git-submodules group across 1 directory with 3 updates ([#153](https://github.com/philips-software/amp-postmaster/issues/153)) ([c136812](https://github.com/philips-software/amp-postmaster/commit/c1368121505cd80a841d12cf738da41e73dda4e1))


### Bug Fixes

* Install postmaster binaries ([#146](https://github.com/philips-software/amp-postmaster/issues/146)) ([8429844](https://github.com/philips-software/amp-postmaster/commit/842984459ac9b12047a313f3510fe26addfba380))

## [0.3.1](https://github.com/philips-software/amp-postmaster/compare/v0.3.0...v0.3.1) (2025-12-19)


### Bug Fixes

* Remove provenance and devcontainer templates ([#144](https://github.com/philips-software/amp-postmaster/issues/144)) ([d9b699c](https://github.com/philips-software/amp-postmaster/commit/d9b699c77f3d389f975c6d5e6fca4d7e41745df3))

## [0.3.0](https://github.com/philips-software/amp-postmaster/compare/v0.2.0...v0.3.0) (2025-12-19)


### Features

* **deps:** Bump the git-submodules group across 1 directory with 3 updates ([#141](https://github.com/philips-software/amp-postmaster/issues/141)) ([a58cd70](https://github.com/philips-software/amp-postmaster/commit/a58cd70d755250cc557a9f6fa9cc9cd275da8494))

## [0.2.0](https://github.com/philips-software/amp-postmaster/compare/v0.1.0...v0.2.0) (2025-12-17)


### Features

* Add kicad design for Postmaster ([#51](https://github.com/philips-software/amp-postmaster/issues/51)) ([5b0d990](https://github.com/philips-software/amp-postmaster/commit/5b0d9900bc231ba2a10e43529f035f32f8af2cdc))
* **deps:** Bump the git-submodules group across 1 directory with 3 updates ([#65](https://github.com/philips-software/amp-postmaster/issues/65)) ([9473c1d](https://github.com/philips-software/amp-postmaster/commit/9473c1d3efd021cd0ad530f573b0ce2613c047ab))
* Publish flex docker image ([#5](https://github.com/philips-software/amp-postmaster/issues/5)) ([e3fc05b](https://github.com/philips-software/amp-postmaster/commit/e3fc05ba389df427653b57ea76c12f334beb6b95))


### Bug Fixes

* Add tests for FlashAligner and fix it ([#88](https://github.com/philips-software/amp-postmaster/issues/88)) ([2133475](https://github.com/philips-software/amp-postmaster/commit/2133475931bbcfbf4f7fa093ad749119efa9695c))
* Align flash writes to 16 bytes ([#80](https://github.com/philips-software/amp-postmaster/issues/80)) ([0e34eeb](https://github.com/philips-software/amp-postmaster/commit/0e34eeb55f1ba87ccf2061490d2d1f1caafac746))
* Attach from correct SharedPtr ([f00cf1e](https://github.com/philips-software/amp-postmaster/commit/f00cf1e85892faf4e9c6b0aa95d7596bd946d101))
* Fix various problems ([42f0029](https://github.com/philips-software/amp-postmaster/commit/42f00295daf3bd058f0f94b6982cb21b694c2bf2))
* Incorrect tag in dockerfile causes devcontainer build failure ([#118](https://github.com/philips-software/amp-postmaster/issues/118)) ([31f71a4](https://github.com/philips-software/amp-postmaster/commit/31f71a4e9d64e9834987886dd61a1d6c54a75a64))
* Various Echo fixes ([220c4be](https://github.com/philips-software/amp-postmaster/commit/220c4be60fb67f997dff082bfabd027347f24174))

## v0.0.1

- Example Release
