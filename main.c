#include <gb/gb.h>
#include <stdio.h>
#include "gamestate.h"
#include "main.h"

#include "gamestate.h"
#include "sound.h"

#include "title_screen.h"
#include "game.h"

extern UBYTE mainmenu_song_data;

void vblUpdate()
{
	++vbl_count;
}

void main()
{
	disable_interrupts();

	vbl_count = 0U;
	joystate = oldjoystate = 0U;
	level = 1U;

	gamestate = GAMESTATE_TITLE_SCREEN;

	SWITCH_16_8_MODE_MBC1;
	add_TIM(updateMusic);
	add_VBL(vblUpdate);
	set_interrupts(TIM_IFLAG | VBL_IFLAG);

	enable_interrupts();

	setGameBank(GAME_TITLE_SCREEN_BANK);
	initTitleScreen();

	setGameBank(10U);
	snd_init();

	setMusicBank(4U);
	//playMusic(&mainmenu_song_data);

	while (1U)
	{
		updateJoystate();

		switch (gamestate)
		{
			case GAMESTATE_TITLE_SCREEN:
				if (CLICKED(J_START))
				{
					initGame();
					gamestate = GAMESTATE_GAME;
				}

				/*if (CLICKED(J_A))
				{
					setGameBank(10U);
					playSound(SFX_BUMP);
					setGameBank(9U);
				}*/
				break;

			case GAMESTATE_GAME:
				updateGame();
				break;
		}

		/*setGameBank(10U);
		snd_update();
		setGameBank(9U);*/

		// end frame here?
		wait_vbl_done();
	}
}
