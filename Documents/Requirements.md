# Postmaster Requirements Specification

## Document Introduction
This document describes the product requirements and the functional behaviour of the Postmaster.

## Purpose
The Postmaster is a tool intended to be used to download firmware to an attached STM32 Nucleo-F767ZI Board, and to connect to that board over a UART connection. The firmware to download is provided to Postmaster via its network connection.

## Requirements
- The Postmaster attaches on top of an STM32 Nucleo-F767ZI board from ST Microelectronics via the Zio connector and the BOOT0 pin on the Morpho connector.
- The Postmaster draws its power from the Nucleo board to which it is attached.
- The Postmaster uses either the SWD or one of the boot loader protocols supported by the STM32F767 to upgrade the attached Nucleo-F767ZI
- The Postmaster connects to a TCP/IP network via an Ethernet connection.
- The Postmaster displays its current network status.
- The firmware of the Postmaster is remotely upgradeable.
- The Postmaster is programmable via a J-Link programmer.
- The Postmaster is discoverable via mDNS.
  - The DNS hostname is <name>.postmaster._tcp.local.
  - Advertised attributes in the TXT record are:
    - "nm", containing the Postmaster's configured name.
    - "vs", containing the version, in format <major>.<minor>.<patch>.
    - "vf", containing the full version, in format <version>.<commit hash>.
    - "at", containing the attributes describing the setup to which the Postmaster is attached to.
- The hostname is configurable; by default it contains information unique to the microcontroller of the Postmaster.
- Firmware for either the attached Nucleo-F767ZI or the Postmaster itself can be uploaded via the HTTP protocol.
  - The path to upgrade the Postmaster is /firmware/self.
  - The path to upgrade the attached Nucleo is /firmware/target.
- Several HTTP pages which accept POST requests are available, to distinguish between upgrading the Postmaster, upgrading the Nucleo-F767ZI, or patching (writing without erasing) the Nucleo-F767ZI.
- A user-friendly HTTP page is available for dragging/dropping firmware to be uploaded and for configuration.
- On booting, the Postmaster performs a self-test.
- An HTTP page is available that shows nearby detected Postmasters.
- The UART port with which the Postmaster communications with the attached Nucleo board can be configured to be either the same UART through which the Nucleo board is upgraded, or a secondary UART port.
- The HTTP connection can be upgraded to a WebSocket connection via which the Postmaster can talk to the attached Nucleo board over a UART port without interpretation of a protocol.
  - The path for the attached Nucleo is /target/uart/programmer.
  - The path for the external header is /target/uart/external.
- The HTTP connection can be upgraded to a WebSocket connection via which the Postmaster can talk to the attached Nucleo board over a UART port via the ECHO protocol.
  - The path for the attached Nucleo is /target/echo/programmer.
  - The path for the external header is /target/echo/external.

## Assumptions
- The Postmaster is used in a secure network. The Postmaster therefore does not need access control or other security measurements.
