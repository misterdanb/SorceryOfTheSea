#include <gb/gb.h>
#include "defines.h"
#include "gamestate.h"
#include "sea.h"
#include "waves.h"
#include "loosing_screen.h"

#include "game.h"

//#include "data/bg/tangram.h"
#include "data/sprite/sprites.h"

// sprite defines
#define SHIP_LEFT_ID  0
#define SHIP_RIGHT_ID 1

#define SHIP_LEFT_SPRITE  0
#define SHIP_RIGHT_SPRITE 2

// we show 5 magic bar elements, each can be filled half
// or full, this makes 10 magic points in total
#define MAGIC_BAR_LEFT_CORNER_ID  2
#define MAGIC_BAR_RIGHT_CORNER_ID 3

#define MAGIC_BAR_ID_OFFSET       4

#define MAGIC_BAR_LEFT_CORNER_SPRITE   40
#define MAGIC_BAR_RIGHT_CORNER_SPRITE  42

#define MAGIC_BAR_ELEMENT_EMPTY_SPRITE 48
#define MAGIC_BAR_ELEMENT_HALF_SPRITE  46
#define MAGIC_BAR_ELEMENT_FULL_SPRITE  44

// define Wave
#define WAVE_LEFT_ID 10
#define WAVE_RIGHT_ID 11

#define WAVE_LEFT_SPRITE 24
#define WAVE_RIGHT_SPRITE 26

// game defines
#define SHIP_MOVEMENT 16

#define MAX_MAGIC 14
#define MAGIC_RECOVERY_RATE 200

#define MAGIC_BAR_X 16
#define MAGIC_BAR_Y 140

#define MAX_WAVE_HIT_COUNT 8

// game variables
extern UBYTE gamestate;

UBYTE tile_data_offset;

// ship state
UBYTE ship_x, ship_y;
UBYTE ship_is_moving;
BYTE ship_dx, ship_dy;
BYTE ship_sgn_dx, ship_sgn_dy;

// wave state
UBYTE wave_1_tile_x, wave_1_tile_y;

// magic bar state

// wizard magic, every sorcery uses up 1 magic;
// if magic is <= 5 random storms may occur that
// reposition the ship slightly
UBYTE cur_magic;

UBYTE magic_recovery_timer;

UBYTE jump_attempted;
UBYTE jumping;

UBYTE point_counter;
UINT16 points;

// sea state
UBYTE sea_y;

// dying
UBYTE wave_hit_count;

void initGame()
{
	initVariables();
	initSprites();

	updateMagicBar();

	setGameBank(GAME_SEA_BANK);
	tile_data_offset = initSea();

	setGameBank(GAME_WAVES_BANK);
	initWaves(tile_data_offset);

	setupWave1(wave_1_tile_x, wave_1_tile_y);
}

void initVariables()
{
	tile_data_offset = 0;

	ship_x = 88;
	ship_y = 120;

	ship_is_moving = FALSE;
	ship_dx = 0;
	ship_dy = 0;

	setShipPosition(ship_x, ship_y);

	wave_1_tile_x = 8;
	wave_1_tile_y = 0;

	cur_magic = 10;
	magic_recovery_timer = 0;

	jump_attempted = FALSE;
	jumping = 0;

	point_counter = 0;
	points = 0;

	sea_y = 0;

	wave_hit_count = 0;
}

void initSprites()
{
	UBYTE i;

	disable_interrupts();
	DISPLAY_OFF;

	SHOW_SPRITES;
	SPRITES_8x16;

	// initialize game sprites
	set_sprite_data(0, sprites_data_length, sprites_data);

	// initialize ship
	set_sprite_tile(SHIP_LEFT_ID, SHIP_LEFT_SPRITE);
	set_sprite_tile(SHIP_RIGHT_ID, SHIP_RIGHT_SPRITE);

	set_sprite_prop(SHIP_LEFT_ID, OBJ_PAL0);
	set_sprite_prop(SHIP_RIGHT_ID, OBJ_PAL0);

	// initialize magic bar
	set_sprite_tile(MAGIC_BAR_LEFT_CORNER_ID, MAGIC_BAR_LEFT_CORNER_SPRITE);
	set_sprite_tile(MAGIC_BAR_RIGHT_CORNER_ID, MAGIC_BAR_RIGHT_CORNER_SPRITE);

	set_sprite_prop(MAGIC_BAR_LEFT_CORNER_ID, OBJ_PAL0);
	set_sprite_prop(MAGIC_BAR_RIGHT_CORNER_ID, OBJ_PAL0);

	move_sprite(MAGIC_BAR_LEFT_CORNER_ID, MAGIC_BAR_X, MAGIC_BAR_Y);
	move_sprite(MAGIC_BAR_RIGHT_CORNER_ID, MAGIC_BAR_X + (MAX_MAGIC / 2 - 1) * 8, MAGIC_BAR_Y);

	for (i = 0; i < MAX_MAGIC / 2 - 2; i++)
	{
		set_sprite_tile(MAGIC_BAR_ID_OFFSET + i, MAGIC_BAR_ELEMENT_FULL_SPRITE);
		set_sprite_prop(MAGIC_BAR_ID_OFFSET + i, OBJ_PAL0);
		move_sprite(MAGIC_BAR_ID_OFFSET + i, MAGIC_BAR_X + (i + 1) * 8, MAGIC_BAR_Y);
	}

	DISPLAY_ON;
	enable_interrupts();
}

void setShipPosition(UBYTE x, UBYTE y)
{
	if (x < 8) x = 8;
	if (y < 16) y = 16;
	if (x > 152) x = 152;
	if (y > 144) y = 144;

	ship_x = x;
	ship_y = y;

	move_sprite(SHIP_LEFT_ID, x, y);
	move_sprite(SHIP_RIGHT_ID, x + 8, y);
}

void updateMagicBar()
{
	UBYTE i;

	for (i = 0; i < MAX_MAGIC / 2; i++)
	{
		if (i * 2 < cur_magic)
		{
			// is cur_magic odd and is it the last element before empty elements?
			if (i * 2 + 1 == cur_magic)
			{
				set_sprite_tile(MAGIC_BAR_ID_OFFSET + i, MAGIC_BAR_ELEMENT_HALF_SPRITE);
			}
			else
			{
				set_sprite_tile(MAGIC_BAR_ID_OFFSET + i, MAGIC_BAR_ELEMENT_FULL_SPRITE);
			}
		}
		else
		{
			set_sprite_tile(MAGIC_BAR_ID_OFFSET + i, MAGIC_BAR_ELEMENT_EMPTY_SPRITE);
		}
	}
}

void pilotShip(BYTE dx, BYTE dy)
{
	// wizard can only make wind, if there
	// is magic left
	if (cur_magic > 0)
	{
		ship_is_moving = TRUE;

		ship_dx = dx;
		ship_dy = dy;
		ship_sgn_dx = dx < 0 ? -1 : +1;
		ship_sgn_dy = dy < 0 ? -1 : +1;

		// wizard moved the ship by making wind,
		// the magic reduces by 1
		cur_magic -= 1;
		updateMagicBar();
	}
}

void handleInputs()
{
	if (!ship_is_moving)
	{
		BYTE new_ship_dx = 0, new_ship_dy = 0;
		BYTE movement_initiated = FALSE;
	
		if (CLICKED(J_LEFT))
		{
			new_ship_dx = -SHIP_MOVEMENT;
			movement_initiated = TRUE;
		}
		else if (CLICKED(J_RIGHT))
		{
			new_ship_dx = SHIP_MOVEMENT;
			movement_initiated = TRUE;
		}
	
		if (CLICKED(J_UP))
		{
			new_ship_dy = -SHIP_MOVEMENT;
			movement_initiated = TRUE;
		}
		else if (CLICKED(J_DOWN))
		{
			new_ship_dy = SHIP_MOVEMENT;
			movement_initiated = TRUE;
		}
	
		if (movement_initiated)
		{
			pilotShip(new_ship_dx, new_ship_dy);
		}
	}

	if (CLICKED(J_B))
	{
		if (cur_magic > 0)
		{
			// only jumps in the vicinity of a wave are allowed,
			// so the wave_hit_count should be above 0
			if (wave_hit_count > 0)
			{
				jump_attempted = TRUE;
			}

			cur_magic -= 1;
			updateMagicBar();
		}
	}
}

void handleCollisions(UBYTE wave_diff)
{
	if (ship_y >= wave_diff && ship_y < (wave_diff + 1) + 4 * 8 &&
	    ship_x >= wave_1_tile_x * 8 && ship_x < (wave_1_tile_x + 4 + 1) * 8)
	{
		if (wave_hit_count < MAX_WAVE_HIT_COUNT)
		{
			wave_hit_count++;
		}
		else
		{
			if (!jumping)
			{
				if (jump_attempted)
				{
					setShipPosition(ship_x, ship_y);

					jump_attempted = FALSE;
					jumping = 48;
				}
				else
				{
					// DEAD
					gamestate = GAMESTATE_LOST;

					/*ship_x = 8;
					ship_y = 120;
					setShipPosition(ship_x, ship_y);*/
				}
			}

			wave_hit_count = 0;
		}
	}
}

void updateGame()
{
	UBYTE wave_diff;

	if (ship_is_moving)
	{
		if (ship_dy != 0)
		{
			ship_y += ship_sgn_dy;
			ship_dy -= ship_sgn_dy;
		}

		if (ship_dx != 0)
		{
			ship_x += ship_sgn_dx;
			ship_dx -= ship_sgn_dx;
		}

		if (ship_dx == 0 && ship_dy == 0)
		{
			ship_is_moving = FALSE;
		}

		setShipPosition(ship_x, ship_y);
	}

	handleInputs();

	magic_recovery_timer++;
	if (magic_recovery_timer == MAGIC_RECOVERY_RATE)
	{
		magic_recovery_timer = 0;

		if (cur_magic != 10)
		{
			cur_magic++;
			updateMagicBar();
		}
	}

	// move sea background
	sea_y -= points / 10 + 1;

	wave_diff = wave_1_tile_y * 8 - sea_y;

	if (wave_diff > 160U && wave_diff < 200U)
	{
		setGameBank(GAME_WAVES_BANK);
		clearWaves();

		wave_1_tile_x = (sea_y * 7) % 17;
		wave_1_tile_y = (wave_1_tile_y + 6) % 32;

		setupWave1(wave_1_tile_x, wave_1_tile_y);
	}

	handleCollisions(wave_diff);

	if (jumping > 0)
	{
		setShipPosition(ship_x, ship_y - 3);
		jumping -= 3;
	}

	if (cur_magic < 5 && (sea_y * 11) % 83 == 0 && !ship_is_moving)
	{
		ship_is_moving = TRUE;

		ship_dx = (sea_y % 3 - 1) * 20;
		ship_dy = ((sea_y * 17) % 3 - 1) * 20;
		ship_sgn_dx = ship_dx < 0 ? -1 : +1;
		ship_sgn_dy = ship_dy < 0 ? -1 : +1;
	}

	setGameBank(GAME_SEA_BANK);
	setSeaPosition(0, (UBYTE) sea_y);

	if (++point_counter == 0)
	{
		points++;
	}
}
