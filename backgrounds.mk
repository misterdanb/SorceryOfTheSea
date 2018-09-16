backgrounds: game_backgrounds

game_backgrounds: data/bg/title_screen.h data/bg/loosing_screen.h data/bg/sea.h data/bg/wave_1.h data/bg/empty.h

data/bg/title_screen.h: data/bg/title_screen.png
	$(IMGTOGB) --map --rle $< $@

data/bg/loosing_screen.h: data/bg/loosing_screen.png
	$(IMGTOGB) --map --rle $< $@

data/bg/sea.h: data/bg/sea.png
	$(IMGTOGB) --map --rle $< $@

data/bg/wave_1.h: data/bg/wave_1.png
	$(IMGTOGB) --map --rle $< $@

data/bg/empty.h: data/bg/empty.png
	$(IMGTOGB) --map --rle $< $@
