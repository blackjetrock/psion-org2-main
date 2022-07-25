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

Main PCB
========

This has a RP Pico on it as a controller and several IO expanders. These are becuase the Pico doesn't have enough GPIOs to
run all of the hardware that is needed.


Power PCB
=========

The original power PCB doesn't really fit with the new main board, so rather than try to work around it, a new PCB is used with the
new main board. It has the slot connectors and any hardware needed to drive them. The slot level shifters are on this board. It would be possible to design a different poiwer PCB that, for example, didn't have slots but had sd cards instead. The hardware for the slots is then replaced by the ne wPCB, but the main PCB still has whatever circuitry is needed for its own hardware.

Emulator
========

It's a bit of an odd place for it, but there is an emulator here that I used as the basis for the emulator that runs on the recreation. I did the bulk of the work on it on a PC and then moved i tto the Pico. There's now separate code for the Pico as it supports hardware on the main PCB rather than PC based keyboard and display IO. The mon-emulator is a monitored emulator that uses a second emulator to check the operation of mine so that I could find some tricky bugs. The emulator that does the monitoring is the 6303 file from Jaap's Jape emulator, ported to C.
