#ifndef GAME_H
#define GAME_H

void initGame();

void initVariables();
void initSprites();

void setShipPosition(UBYTE x, UBYTE y);
void pilotShip(BYTE dx, BYTE dy);

void updateGame();

#endif
