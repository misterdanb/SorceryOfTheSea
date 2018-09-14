sounds: data/sounds/sfx_bump.h data/sounds/sfx_bump_alien.h 

data/sounds/%.h: data/sounds/%.mml
	java -jar $(MMLGB) $< $@
