# Postmaster Hardware Software Interface

## Document Introduction
This document describes the interface between the hardware and the software of the Postmaster. It describes which peripherals and pins are connected to the hardware on the board.

## Microcontroller

The Postmaster software runs on an STM32F407VE.

## Interface

### STM32 Nucleo-F767ZI

The Postmaster is connected to the STM32 Nucleo-F767ZI in this way:

| Postmaster     | STM32 Nucleo-F767ZI |
|----------------|---------------------|
| PB5            | Boot0               |
| PA10, UART1 RX | PC10 UART3/4 TX     |
| PB6, UART1 TX  | PC11 UART3/4 RX     |
| PB7, UART1 RX  | Extern Header TX    |
| PA9, UART1 TX  | Extern Header RX    |
| PB4            | nReset              |
| PC7, UART6 RX  | PD8 UART3 TX        |

### Display

The Display is a 128x32 pixels OLED displayed controlled by an SSD1306 chip. The address of this chip is 0x3c. This chip is connected over I2C (max. frequency 400kHz) in this way:

| Postmaster    | SSD1306 |
|---------------|---------|
| PB8, I2C1 SCL | SCL     |
| PB9, I2C1 SDA | SDA     |

### Flash

The Flash chip is a generic JEDEC serial NOR flash chip with at capacity of at least 2MB connected over SPI in this way:

| Postmaster      | Flash |
|-----------------|-------|
| PA15            | CS    |
| PC10, SPI3 CLK  | CLK   |
| PC11, SPI3 MISO | MISO  |
| PC12, SPI3 MOSI | MOSI  |

### Ethernet

The Postmaster is connected to a LAN8710A Ethernet PHY chip via the SMI and RMII interfaces. Its SMI address is 0.

| Postmaster | Ethernet   |
|------------|------------|
| PA2        | mdio       |
| PC1        | mdc        |
| PA1        | rmiiRefClk |
| PA7        | rmiiCrsDv  |
| PC4        | rmiiRxD0   |
| PC5        | rmiiRxD1   |
| PB11       | rmiiTxEn   |
| PB12       | rmiiTxD0   |
| PB13       | rmiiTxD1   |

### Debug UART

The Debug UART is connected to the TDI and DBGRQ pins of the 20-pin J-Link Connector, which is presented over USB by the J-Link adapter as a virtual COM port.

| Postmaster    | Debug UART                |
|---------------|---------------------------|
| PD8, UART3 TX | J-Link-RX (DBGRQ, pin 17) |
| PD9, UART3 RX | J-Link-TX (TDI, pin 5)    |
