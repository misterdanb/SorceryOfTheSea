backgrounds: logos_backgrounds

logos_backgrounds: data/bg/tangram.h data/bg/potato.h

data/bg/tangram.h: data/bg/tangram.png
	$(IMGTOGB) --map --rle $< $@

data/bg/potato.h: data/bg/potato.png
	$(IMGTOGB) --map --rle $< $@

