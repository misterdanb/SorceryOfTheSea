#include <gb/gb.h>
#include "defines.h"
#include "gamestate.h"

#include "sea.h"
#include "waves.h"

#include "data/bg/wave_1.h"
#include "data/bg/empty.h"

UBYTE waves_tile_data_offset;
UBYTE loc_wave_1_tile_x, loc_wave_1_tile_y;

void initWaves(UBYTE offset)
{
	waves_tile_data_offset = offset;

	disable_interrupts();
	DISPLAY_OFF;

	set_bkg_data_rle(40U, wave_1_data_length, wave_1_data);

	DISPLAY_ON;
	enable_interrupts();
}

void clearWaves()
{
	repairSea(loc_wave_1_tile_x, loc_wave_1_tile_y, 4, 4);
}

void setupWave1(UBYTE tile_x, UBYTE tile_y)
{
	loc_wave_1_tile_x = tile_x;
	loc_wave_1_tile_y = tile_y;

	set_bkg_tiles_rle(40U, tile_x, tile_y, wave_1_tiles_width, wave_1_tiles_height, wave_1_tiles);
}

void setWavesPosition(UBYTE x, UBYTE y)
{
	move_win(x, y);
}
