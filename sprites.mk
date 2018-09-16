sprites: data/sprite/sprites.h

data/sprite/sprites.h: data/sprite/sprites.png
	$(IMGTOGB) --sprite --8x16 $< $@

