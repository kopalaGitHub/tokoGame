#include <gb/gb.h>

typedef struct Snail{
  uint8_t location[2];
  uint8_t move_location[2];
  UBYTE dead;
}Snail;