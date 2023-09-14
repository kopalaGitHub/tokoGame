#include <gb/gb.h>

typedef struct Killer{
  uint8_t location[2];
  uint8_t bullet_location[2];
  UBYTE dead;
}Killer;