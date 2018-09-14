#include <gb/gb.h>
#include "defines.h"
#include "gamestate.h"

#include "title_screen.h"

#include "data/bg/title_screen.h"

void initTitleScreen()
{
	disable_interrupts();
	DISPLAY_OFF;

	OBP0_REG = 0xD0U; // 11010000
	BGP_REG = 0xE4U; // 11100100

	HIDE_WIN;
	SHOW_BKG;

	set_bkg_data_rle(0U, title_screen_data_length, title_screen_data);
	set_bkg_tiles_rle(0U, 0U, title_screen_tiles_width, title_screen_tiles_height, title_screen_tiles);

	move_bkg(0, 0);

	DISPLAY_ON;
	enable_interrupts();
}
