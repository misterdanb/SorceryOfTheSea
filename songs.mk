songs: $(SONGS_BANK4)

SONGS_BANK4=data/songs/mainmenu_song.asm

$(SONGS_BANK4): MMLBANK:=4

data/songs/%_song.asm: data/songs/%.mml
	java -jar $(MMLGB) $< $@ $(MMLBANK)
