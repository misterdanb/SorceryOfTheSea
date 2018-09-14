#include <gb/gb.h>
#include "gamestate.h"
#include "mmlgb/driver/music.h"

UBYTE vbl_count;
UBYTE level;
UBYTE ticks, paused, timer;
UBYTE gamestate, scene_state;
UBYTE joystate, oldjoystate;
UBYTE elapsed_time, elapsed_minutes, remaining_time, kills;
UBYTE game_bank, music_bank;

void set_bkg_data_rle(UBYTE first, UBYTE n, UBYTE *data) {
	UBYTE i, j, run, tile;
	UBYTE block[32];

	run = 0U;
	for(i = first; i != first+n; ++i) {
		for(j = 0U; j != 16U; ++j) {
			if(run == 0U) {
				tile = data[0];
				if(data[0] == data[1]) {
					run = data[2];
					data += 3U;
				} else {
					run = 1U;
					data++;
				}
			}
			block[j] = tile;
			run--;
		}
		set_bkg_data(i, 1U, block);
	}
}

void set_bkg_tiles_rle(UBYTE x, UBYTE y, UBYTE width, UBYTE height, UBYTE *tiles) {
	UBYTE ix, iy, run, tile;
	run = 0U;
	for(iy = y; iy != y+height; ++iy) {
		for(ix = x; ix != x+width; ++ix) {
			if(run == 0U) {
				tile = tiles[0];
				if(tiles[0] == tiles[1]) {
					run = tiles[2];
					tiles += 3U;
				} else {
					run = 1U;
					tiles++;
				}
			}
			set_bkg_tiles(ix, iy, 1U, 1U, &tile);
			run--;
		}
	}
}

void setGameBank(UBYTE i) {
	game_bank = i;
	SWITCH_ROM_MBC1(i);
}

void setMusicBank(UBYTE i) {
	music_bank = i;
}

void playMusic(UBYTE *data) {
	SWITCH_ROM_MBC1(music_bank);
	mus_init(data);
	SWITCH_ROM_MBC1(game_bank);
}

void updateMusic() {
	SWITCH_ROM_MBC1(music_bank);
	mus_update();
	SWITCH_ROM_MBC1(game_bank);
}

void stopMusic() {
	mus_setPaused(1U);
}

void updateJoystate() {
	oldjoystate = joystate;
	joystate = joypad();
}
