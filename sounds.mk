sounds:

data/sounds/%.h: data/sounds/%.mml
	java -jar $(MMLGB) $< $@
