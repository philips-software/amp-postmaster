# Postmaster (Programmer Of ST Microcontrollers Attached to ST Experiment boaRds)

<!-- markdownlint-disable -->
[![Continuous Integration](https://github.com/philips-internal/amp-postmaster/workflows/Continuous%20Integration/badge.svg)](https://github.com/philips-internal/amp-postmaster/actions)[![Linting & Formatting](https://github.com/philips-internal/amp-postmaster/actions/workflows/linting-formatting.yml/badge.svg)](https://github.com/philips-internal/amp-postmaster/actions/workflows/linting-formatting.yml)
<!-- markdownlint enable -->

## Overview

Postmaster is a device that clicks on top of an STM32 Nucleo-F767ZI board from ST Microelectronics, and through its Ethernet connector you can program the Nucleo and communicate with it.
In this way, Postmaster is usable in hardware-in-the-loop tests, where a test board is reachable through the internet. That test board can first be programmed with the correct firmware. For communicating with the test board, a client can connect to Postmaster via a websocket connection, and talk to the attached board either via a plain UART connection, or via an [ECHO](https://philips-software.github.io/amp-embedded-infra-lib/embedded_infrastructure_library/6.0.0/Echo.html) connection. This communication line is used to execute tests.
Test boards enabled by Postmaster are intended to be inherently scalable; Adding tests boards in a setup should be as simple as putting a Postmaster on top of it, configuring the Postmaster with a few labels describing the characteristics of that board, and connecting it to the internet. A locally installed proxy (also part of this archive) provides discoverability of all Postmasters in its vicinity, and routes incoming requests for boards with certain characteristics to any available board.
By providing a schematics and PCB layout, the Postmaster firmware, and various tools, this repository aims to provide a full suite of components tackling all aspects of connecting a hardware-in-the-loop test board to the cloud.

Requirements of Postmaster are documented [here](Documents/Requirements.md).

## Community

This project uses the [CODE_OF_CONDUCT](./CODE_OF_CONDUCT.md) to define expected conduct in our community. Instances of abusive, harassing, or otherwise unacceptable behavior may be reported by contacting a project [CODEOWNER](.github/CODEOWNERS)

## Changelog

See [CHANGELOG](./CHANGELOG.md) for more info on what's been changed.

## Build

The Postmaster binaries can be built by executing the following commands:

```shell
cmake --preset stm32f407
cmake --build --preset stm32f407-MinSizeRel
```

The postmaster.flex utility can be build by executing the following commands:

```shell
cmake --preset host
cmake --build --preset host-RelWithDebInfo
```

## Reporting vulnerabilities

If you find a vulnerability, please report it to us!
See [security](.github/SECURITY.md) for more information.

## Licenses

See [LICENSE](./LICENSE.md)
