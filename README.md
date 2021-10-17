# psion-org2-main
Psion Organiser 2 Recreation Main PCB

A recreation of the Psion Organiser II main PCB using a RP Pico as the
main processor.
An OLED display replaces the original LCD, datapack gadgets supply the
non volatile storage using SD cards.
A ESP-WROOM-32 module on the board provides Wifi and maybe Bluetooth connectivity.
The module provides a hot spot that can be used ot perfom actions on the Organiser
and transfer data.

The code running will hopefully be an emulation of the 6303 running one of the original
organiser ROMs with the hardware emulation done on the Pico.
