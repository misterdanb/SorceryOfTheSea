#ifndef SOUND_H
#define SOUND_H

void snd_init();
void wait_sound_done();
void playSound(UBYTE id);
void snd_update();
void snd_update1();
void snd_update4();
UBYTE snd_isActive1();
UBYTE snd_isActive4();

#define SOUND_BANK 10U

#define SFX_BUMP             0U
#define SFX_BUMP_ALIEN       1U

#define SFX_COUNT            2U

#endif
