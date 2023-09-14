#include "gb/gb.h"

typedef struct Boss
{
  uint8_t location[2];
  uint8_t health;
  UBYTE dead;
}Boss;