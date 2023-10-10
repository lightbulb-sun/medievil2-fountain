.DELETE_ON_ERROR:

AS = armips

ASM = hack.asm
ROM = medievil2-track1-orig.bin
HACK = medievil2-track1-hack.bin

$(HACK): $(ASM)
	cp $(ROM) $(HACK)
	$(AS) $(ASM)

clean:
	rm -rf $(HACK)
