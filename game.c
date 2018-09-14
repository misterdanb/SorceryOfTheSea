#include <gb/gb.h>
#include <stdio.h>
#include "defines.h"
#include "gamestate.h"

#include "game.h"

//#include "data/bg/tangram.h"
#include "data/sprite/sprites.h"

// sprite defines
#define SHIP_LEFT_ID  0
#define SHIP_RIGHT_ID 1

#define SHIP_LEFT_SPRITE  20
#define SHIP_RIGHT_SPRITE 22

// game defines
#define SHIP_MOVEMENT 20

#define MAX_MAGIC 10

// game variables

// ship state
UBYTE ship_x, ship_y;
UBYTE ship_is_moving;
BYTE ship_dx, ship_dy;
BYTE ship_sgn_dx, ship_sgn_dy;

// wizard magic, every sorcery uses up 1 magic;
// if magic is <= 5 random storms may occur that
// reposition the ship slightly
UBYTE cur_magic;

void initVariables()
{
	ship_x = 16 + 160 / 2;
	ship_y = 8 + 120;

	ship_is_moving = FALSE;
	ship_dx = 0;
	ship_dy = 0;

	setShipPosition(ship_x, ship_y);

	cur_magic = 10;
}

void initBackground()
{
	/*disable_interrupts();
	DISPLAY_OFF;

	OBP0_REG = 0xD0U; // 11010000
	BGP_REG = 0xE4U; // 11100100

	HIDE_WIN;
	SHOW_BKG;

	set_bkg_data_rle(0U, tangram_data_length, tangram_data);
	set_bkg_tiles_rle(0U, 0U, tangram_tiles_width, tangram_tiles_height, tangram_tiles);

	DISPLAY_ON;
	enable_interrupts();*/
}

void initSprites()
{
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

	DISPLAY_ON;
	enable_interrupts();
}

void setShipPosition(UBYTE x, UBYTE y)
{
	ship_x = x;
	ship_y = y;

	move_sprite(SHIP_LEFT_ID, x, y);
	move_sprite(SHIP_RIGHT_ID, x + 8, y);
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
	}
}

void handleInputs()
{
	if (CLICKED(J_A))
	{
		BYTE new_ship_dx = 0, new_ship_dy = 0;
		BYTE movement_initiated = FALSE;

		if (ISDOWN(J_LEFT))
		{
			new_ship_dx = -SHIP_MOVEMENT;
			movement_initiated = TRUE;
		}
		else if (ISDOWN(J_RIGHT))
		{
			new_ship_dx = SHIP_MOVEMENT;
			movement_initiated = TRUE;
		}

		if (ISDOWN(J_UP))
		{
			new_ship_dy = -SHIP_MOVEMENT;
			movement_initiated = TRUE;
		}
		else if (ISDOWN(J_DOWN))
		{
			new_ship_dy = SHIP_MOVEMENT;
			movement_initiated = TRUE;
		}

		if (movement_initiated)
		{
			pilotShip(new_ship_dx, new_ship_dy);
		}
	}
}

void updateGame()
{
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
}
