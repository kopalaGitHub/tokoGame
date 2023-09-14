#include <gb/gb.h>

typedef struct Character{
  uint8_t location[2];
  uint8_t left;
  uint8_t right;
  uint8_t up;
  uint8_t down;
  UBYTE has_key[1];
  UBYTE dead;
} Character;