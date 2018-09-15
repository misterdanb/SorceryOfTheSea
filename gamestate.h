#ifndef GAMESTATE_H
#define GAMESTATE_H

void updateJoystate();
void setGameBank(UBYTE i);
void setMusicBank(UBYTE i);
void playMusic(UBYTE *data);
void updateMusic();
void stopMusic();

void set_bkg_data_rle(UBYTE first, UBYTE n, UBYTE *data);
void set_bkg_tiles_rle(UBYTE tile_data_offset, UBYTE x, UBYTE y, UBYTE width, UBYTE height, UBYTE *tiles);
void set_win_data_rle(UBYTE first, UBYTE n, UBYTE *data);
void set_win_tiles_rle(UBYTE tile_data_offset, UBYTE x, UBYTE y, UBYTE width, UBYTE height, UBYTE *tiles);

extern UBYTE vbl_count;
extern UBYTE level;
extern UBYTE ticks, paused, timer;
extern UBYTE gamestate, scene_state;
extern UBYTE selection, sub_selection;
extern UBYTE joystate, oldjoystate;
extern UBYTE elapsed_time, elapsed_minutes, remaining_time, kills;
extern UBYTE game_bank, music_bank;

#define CLICKED(x) ((joystate & x) && (joystate & x) != (oldjoystate & x))
#define RELEASED(x) (!(joystate & x) && (joystate & x) != (oldjoystate & x))
#define ISDOWN(x) (joystate & (x))

#define GAMESTATE_TITLE_SCREEN 0U
#define GAMESTATE_GAME         1U

#define GAME_SEA_BANK          1U
#define GAME_WAVES_BANK        1U

#define GAME_TITLE_SCREEN_BANK 2U

#endif
