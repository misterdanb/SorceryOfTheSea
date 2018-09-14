#include <gb/gb.h>
#include <stdio.h>
#include "defines.h"
#include "gamestate.h"
#include "sea.h"

#include "game.h"

//#include "data/bg/tangram.h"
#include "data/sprite/sprites.h"

// sprite defines
#define SHIP_LEFT_ID  0
#define SHIP_RIGHT_ID 1

#define SHIP_LEFT_SPRITE  20
#define SHIP_RIGHT_SPRITE 22

// we show 5 magic bar elements, each can be filled half
// or full, this makes 10 magic points in total
#define MAGIC_BAR_LEFT_CORNER_ID  2
#define MAGIC_BAR_RIGHT_CORNER_ID 3

#define MAGIC_BAR_ID_OFFSET       4

#define MAGIC_BAR_LEFT_CORNER_SPRITE   0
#define MAGIC_BAR_RIGHT_CORNER_SPRITE  4

#define MAGIC_BAR_ELEMENT_EMPTY_SPRITE 8
#define MAGIC_BAR_ELEMENT_HALF_SPRITE  12
#define MAGIC_BAR_ELEMENT_FULL_SPRITE  16

// game defines
#define SHIP_MOVEMENT 20

#define MAX_MAGIC 10
#define MAGIC_RECOVERY_RATE 200

#define MAGIC_BAR_X 16
#define MAGIC_BAR_Y 140

// game variables

// ship state
UBYTE ship_x, ship_y;
UBYTE ship_is_moving;
BYTE ship_dx, ship_dy;
BYTE ship_sgn_dx, ship_sgn_dy;

// magic bar state

// wizard magic, every sorcery uses up 1 magic;
// if magic is <= 5 random storms may occur that
// reposition the ship slightly
UBYTE cur_magic;

UBYTE magic_recovery_timer;

// sea state
UBYTE sea_y;

void initGame()
{
	initVariables();
	initSprites();

	setGameBank(GAME_SEA_BANK);
	initSea();
}

void initVariables()
{
	ship_x = 16 + 160 / 2;
	ship_y = 8 + 120;

	ship_is_moving = FALSE;
	ship_dx = 0;
	ship_dy = 0;

	setShipPosition(ship_x, ship_y);

	cur_magic = 10;
	magic_recovery_timer = 0;
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
	move_sprite(MAGIC_BAR_RIGHT_CORNER_ID, MAGIC_BAR_X + (MAX_MAGIC / 2 + 1) * 8, MAGIC_BAR_Y);

	for (i = 0; i < MAX_MAGIC / 2; i++)
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
	sea_y--;

	setGameBank(GAME_SEA_BANK);
	setSeaPosition(0, sea_y);
}
