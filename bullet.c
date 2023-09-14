#include <gb/gb.h>

typedef struct Bullet{
  uint16_t shoot_cooldown;
  uint16_t frames_since_last_shoot;
  uint8_t location[2];
  UBYTE shot_right;
}Bullet;