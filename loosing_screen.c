#include <gb/gb.h>
#include "defines.h"
#include "gamestate.h"

#include "loosing_screen.h"

#include "data/bg/loosing_screen.h"

void initLoosingScreen()
{
	disable_interrupts();
	DISPLAY_OFF;

	OBP0_REG = 0xD0U; // 11010000
	BGP_REG = 0xE4U; // 11100100

	HIDE_WIN;
	HIDE_SPRITES;
	SHOW_BKG;

	set_bkg_data_rle(0U, loosing_screen_data_length, loosing_screen_data);
	set_bkg_tiles_rle(0U, 0U, 0U, loosing_screen_tiles_width, loosing_screen_tiles_height, loosing_screen_tiles);

	move_bkg(0, 0);

	DISPLAY_ON;
	enable_interrupts();
}
