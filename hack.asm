.psx
.open "medievil2-track1-hack.bin", 0

RAM                     equ 0x8004e23c
ROM                     equ 0x7704314
FOUNTAIN_ARRAY_LENGTH   equ 0x800f1698
REG_GP                  equ 0x800eeac8

.headersize RAM-ROM
.org 0x8004e240
level_loading:
        ; set number of saved health fountains to zero when loading a level
        sw      r0, (FOUNTAIN_ARRAY_LENGTH-REG_GP)(gp)

.close
