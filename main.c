#include <gb/gb.h>
#include <stdio.h>
#include "gamestate.h"
#include "main.h"

#include "gamestate.h"
#include "sound.h"

#include "bkg.h"

extern UBYTE mainmenu_song_data;

void vblUpdate() {
	++vbl_count;
}

void main() {
	disable_interrupts();

	vbl_count = 0U;
	joystate = oldjoystate = 0U;
	level = 1U;

	gamestate = GAMESTATE_LOGOS;

	SWITCH_16_8_MODE_MBC1;
	add_TIM(updateMusic);
	add_VBL(vblUpdate);
	set_interrupts(TIM_IFLAG | VBL_IFLAG);

	enable_interrupts();

	setGameBank(10U);
	snd_init();

	setGameBank(9U);
	setTangram();
	setSprites();

	setMusicBank(4U);
	playMusic(&mainmenu_song_data);

	printf("%x %x\n", (&mainmenu_song_data)[0], (&mainmenu_song_data)[1]);

	while (1U)
	{
		updateSprite(16 + (UBYTE) (vbl_count % 160), 16 + (UBYTE) (vbl_count % 144));
		updateJoystate();
		switch (gamestate)
		{
			case GAMESTATE_LOGOS:
				if (CLICKED(J_A))
				{
					setGameBank(10U);
					playSound(SFX_BUMP);
					setGameBank(9U);
				}
				break;
		}

		setGameBank(10U);
		snd_update();
		setGameBank(9U);
		wait_vbl_done();
	}
}
