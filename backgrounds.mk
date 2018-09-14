backgrounds: game_backgrounds

game_backgrounds: data/bg/title_screen.h data/bg/sea.h data/bg/potato.h

data/bg/title_screen.h: data/bg/title_screen.png
	$(IMGTOGB) --map --rle $< $@

data/bg/sea.h: data/bg/sea.png
	$(IMGTOGB) --map --rle $< $@

data/bg/potato.h: data/bg/potato.png
	$(IMGTOGB) --map --rle $< $@

