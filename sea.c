#include <gb/gb.h>
#include "defines.h"
#include "gamestate.h"

#include "sea.h"

#include "data/bg/sea.h"

void initSea()
{
	disable_interrupts();
	DISPLAY_OFF;

	OBP0_REG = 0xD0U; // 11010000
	BGP_REG = 0xE4U; // 11100100

	HIDE_WIN;
	SHOW_BKG;

	set_bkg_data_rle(0U, sea_data_length, sea_data);
	set_bkg_tiles_rle(0U, 0U, sea_tiles_width, sea_tiles_height, sea_tiles);

	DISPLAY_ON;
	enable_interrupts();
}

void setSeaPosition(UBYTE x, UBYTE y)
{
	move_bkg(x, y);
}
