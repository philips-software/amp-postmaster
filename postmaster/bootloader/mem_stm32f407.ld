MEMORY
{
  RAM (w)          : ORIGIN = 0x20000000, LENGTH = 128K
  RAM_SHARED (xrw) : ORIGIN = 0, LENGTH = 0
  BOOTLOADER (rx)  : ORIGIN = 0x08000000, LENGTH = 32K
  APPLICATION (rx) : ORIGIN = 0x08008000, LENGTH = 512K - 32K
}

_flash_start = ORIGIN(BOOTLOADER);
_flash_end = ORIGIN(APPLICATION) + LENGTH(APPLICATION);
_application_start = ORIGIN(APPLICATION);
_application_end = ORIGIN(APPLICATION) + LENGTH(APPLICATION);
