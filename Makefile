CC=lcc
CFLAGS=-Wl-j
IMGTOGB=../imgtogb/bin/imgtogb
EMULATOR=gambatte-qt
MMLGB=MMLGB.jar

default: backgrounds sprites sounds songs thewindwizard.gb

include backgrounds.mk
include sprites.mk
include songs.mk
include sounds.mk

OBJ=main.o gamestate.o game.o mmlgb/driver/music.o mmlgb/driver/freq.o mmlgb/driver/noisefreq.o mmlgb/driver/vib.o

OBJ_BANK1=sea.o waves.o
OBJ_BANK2=title_screen.o
OBJ_BANK3=
OBJ_BANK4=
OBJ_BANK5=
OBJ_BANK6=
OBJ_BANK7=
OBJ_BANK8=
OBJ_BANK9=
OBJ_BANK10=sound.o sound_data.o

OBJ_ASM=title_song.o mainmenu_song.o

$(OBJ_BANK1): CFLAGS+=-Wf-bo1
$(OBJ_BANK2): CFLAGS+=-Wf-bo2
$(OBJ_BANK3): CFLAGS+=-Wf-bo3
$(OBJ_BANK4): CFLAGS+=-Wf-bo4
$(OBJ_BANK5): CFLAGS+=-Wf-bo5
$(OBJ_BANK6): CFLAGS+=-Wf-bo6
$(OBJ_BANK7): CFLAGS+=-Wf-bo7
$(OBJ_BANK8): CFLAGS+=-Wf-bo8
$(OBJ_BANK9): CFLAGS+=-Wf-bo9
$(OBJ_BANK10): CFLAGS+=-Wf-bo10

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o: data/songs/%.asm
	$(CC) $(CFLAGS) -c $< -o $@

thewindwizard.gb: $(OBJ) $(OBJ_BANK1) $(OBJ_BANK2) $(OBJ_BANK3) $(OBJ_BANK4) $(OBJ_BANK5) $(OBJ_BANK6) $(OBJ_BANK7) $(OBJ_BANK8) $(OBJ_BANK9) $(OBJ_BANK10) $(OBJ_ASM)
	$(CC) $(CFLAGS) -Wl-yt3 -Wl-yo16 -Wl-ya1 $^ -o $@

.PHONY: run
run:
	$(EMULATOR) thewindwizard.gb

.PHONY: clean
clean:
	rm *.o
	rm *.sym
	rm *.gb
	rm data/songs/*.asm
	rm data/sounds/*.h
