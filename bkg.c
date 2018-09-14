#include <gb/gb.h>
#include "defines.h"
#include "gamestate.h"

#include "bkg.h"

#include "data/bg/tangram.h"
#include "data/sprite/sprites.h"

void setTangram()
{
	disable_interrupts();
	DISPLAY_OFF;

	OBP0_REG = 0xD0U; // 11010000
	BGP_REG = 0xE4U; // 11100100

	HIDE_WIN;
	SHOW_BKG;

	set_bkg_data_rle(0U, tangram_data_length, tangram_data);
	set_bkg_tiles_rle(0U, 0U, tangram_tiles_width, tangram_tiles_height, tangram_tiles);

	DISPLAY_ON;
	enable_interrupts();
}

void setSprites()
{
	disable_interrupts();
	DISPLAY_OFF;

	SHOW_SPRITES;
	SPRITES_8x16;

	set_sprite_data(0, sprites_data_length, sprites_data);
	set_sprite_tile(0, 20);
	set_sprite_tile(1, 22);
	set_sprite_prop(0, OBJ_PAL0);
	set_sprite_prop(1, OBJ_PAL0);

	DISPLAY_ON;
	enable_interrupts();
}

void updateSprite(UBYTE x, UBYTE y)
{
	move_sprite(0, x, y);
	move_sprite(1, x + 8, y);
}
