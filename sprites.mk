sprites: data/sprite/sprites.h data/sprite/portal.h 

data/sprite/sprites.h: data/sprite/sprites.png
	$(IMGTOGB) --sprite --8x16 $< $@

data/sprite/portal.h: data/sprite/portal.png
	$(IMGTOGB) --sprite --8x16 $< $@

