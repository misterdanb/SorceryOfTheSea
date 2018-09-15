#ifndef WAVE_1_MAP_H
#define WAVE_1_MAP_H

#define wave_1_data_length 4
const unsigned char wave_1_data[] = {
	  4,   0,   7,   0,  15,   2,  31,   7,  27,  11,  17,  17,   2,   0,   0,   6, 
	128,   0, 192,   0, 224,   0, 240,   0, 240, 128, 248, 128, 120,   0,   0,   3, 
	193,   0,  65,   0,  97,   1,  48,   0,  16,   0,  24,   0,   8,   0, 252,  32, 
	254, 112, 191, 176,  31,  24,  31,  28,  15,  12,  15,   0,   0,   3
};

#define wave_1_tiles_width 4
#define wave_1_tiles_height 4
#define wave_1_offset 0
const unsigned char wave_1_tiles[] = {
	  0,   1,   0,   1,   2,   3,   2,   3,   0,   1,   0,   1,   2,   3,   2,   3
};

#endif
