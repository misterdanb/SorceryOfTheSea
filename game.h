#ifndef BKG_H
#define BKG_H

void initVariables();
void initBackground();
void initSprites();

void setShipPosition(UBYTE x, UBYTE y);
void pilotShip(BYTE dx, BYTE dy);

void updateGame();

#endif
