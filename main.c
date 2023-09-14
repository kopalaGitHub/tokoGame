#include <gb/gb.h>
#include <stdio.h>
#include "art/toko.c"
#include "art/toko_unarmed.c"
#include "character.c"
#include "bullet.c"
#include "object.c"
#include "art/maps.c"
#include "art/guard.c"
#include "art/snail_draw.c"
#include "art/killer_draw.c"
#include "art/Coin.c"
#include "Text/characters.c"
#include "Text/king_dialogue.c"
#include "Text/guard_dialogue.c"
#include "snail.c"
#include "killer.c"
#include "art/explosion.c"
#include "art/fly.c"
#include "text/gunless_warning.c"
#include "art/tiles.c"
#include "text/guard_dialogue_greet.c"
#include "text/button_click.c"
#include "boss.c"
#include "splashscreen/splashcreen_data.c"
#include "splashscreen/splashcreen_map.c"
#include "splashscreen/Bird.c"
#include "HUGE/hUGEDriver.h"
#include "MenuSong.c"
#include "text/take_coin_dialogue.c"
#include "text/king_death_dialogue_one.c"
#include "text/king_death_dialogue_two.c"
#include "text/guard_death_dialogue.c"
#include "art/dude.c"
#include "art/toko_with_hat.c"
#include "text/invincible_dialogue.c"
#include "text/invincible_shoot.c"
#include "text/door_open_dialogue.c"
#include "text/need_key_dialogue.c"
#include "text/king_alive_ending_dialogue.c"
#include "text/king_dead_ending_dialogue.c"
#include "text/king_last_dialogue.c"
#include "art/planet.c"

const char blankmap[1] = {0x00};
const char dead_king[6] = {0x39, 0x00, 0x3A, 0x3C, 0x3B, 0x3D};

const unsigned char hp_12[2] = {0x81, 0x82};
const unsigned char hp_11[2] = {0x81, 0x81};
const unsigned char hp_10[2] = {0x81, 0x80};
const unsigned char hp_9[2] = {0x89, 0x05};
const unsigned char hp_8[2] = {0x88, 0x05};
const unsigned char hp_7[2] = {0x87, 0x05};
const unsigned char hp_6[2] = {0x86, 0x05};
const unsigned char hp_5[2] = {0x85, 0x05};
const unsigned char hp_4[2] = {0x84, 0x05};
const unsigned char hp_3[2] = {0x83, 0x05};
const unsigned char hp_2[2] = {0x82, 0x05};
const unsigned char hp_1[2] = {0x81, 0x05};
const unsigned char hp_0[2] = {0x05, 0x05};

uint8_t JUMP_FORCE;
uint8_t player_speed;
Character player;
Killer killer[2];
Snail snail[2];
Object gold;
Object invincible;
Boss boss_bat;
Bullet bullet;
Bullet bullet_enemy;
UBYTE player_armed;
UBYTE gold_one_took;
UBYTE gold_two_took;
UBYTE ducking;
enum direction {left, right, up, down};
uint8_t i;
uint16_t ii;
uint8_t mid_air_frames;
UBYTE mid_air;
uint8_t player_animation_state;
uint8_t player_shooting_animation_state;
UBYTE moving_right;
UBYTE snail_moving_right;
UBYTE king_dead;
UBYTE guard_dead;
uint8_t x_tile, y_tile;
uint16_t tile_index;
uint8_t map_index;
unsigned char walkable_tiles[3];
uint8_t joypad_state;
uint8_t prev_joypad_state;
uint8_t explosion_sprite_index;

uint8_t backgroundoffset1x;
uint8_t backgroundoffset2x;
uint8_t backgroundoffset3x;
uint8_t backgroundoffset1y;
uint8_t backgroundoffset2y;
uint8_t backgroundoffset3y;

extern const hUGESong_t menu_song;

void SplashScreen();
void GameLoop();
void SetUp();
void ResetGameBoy();
UBYTE PlayerCanMove(enum direction dir);
UBYTE CheckPixlexCollision(uint8_t x, uint8_t y);
void Movement();
void JumpFall();
void Update();
void Animator();
void Shoot();
void GetGun();
void MapController();
void MapZero();
void MapOneStart(enum direction dir);
void MapOne();
void MapTwoStart();
void MapTwo();
void MapThreeStart(enum direction dir);
void MapThree();
void MapFourStart(enum direction dir);
void MapFour();
void MapFiveStart(enum direction dir);
void MapFive();
void MapSixStart(enum direction dir);
void MapSix();
void MapSevenStart(enum direction dir);
void MapSeven();
void MapEightStart();
void MapEight();
void MapNineStart(enum direction dir);
void MapNine();
void MapTenStart(enum direction dir);
void MapTen();
void MapElevenStart();
void MapEleven();
void MapTwelveStart(enum direction dir);
void MapTwelve();
void MapThirteenStart(enum direction dir);
void MapThirteen();
void MapFourteenStart(enum direction dir);
void MapFourteen();
void MapFifteenStart(enum direction dir);
void MapFifteen();
void MapSixteenStart(enum direction dir);
void MapSixteen();
void MapSeventeenStart();
void MapSeventeen();
void DisplayBatHealth();
void ExplodePlanetAnimation();
void fadeout();
void fadein();
void performantdelay(uint8_t numloops);
void SnailMovement(uint8_t snail_index, uint8_t sprite_index);
void SnailCollision(uint8_t snail_index, uint8_t sprite_index);
void SnailManager(uint8_t snail_index, uint8_t sprite_index);
void KillerManager(uint8_t killer_index, uint8_t sprite_index, UBYTE looking_right);
void DeathAnimation();
void Dialogue(unsigned char dialogue[360]);
void interruptLCD();

void main()
{
  SplashScreen();
  
  SetUp();
  GameLoop();
}

void SplashScreen()
{
  hUGE_init(&menu_song);
  set_bkg_data(0, 107, splashcreen_data);
  set_bkg_tiles(0, 0, 32, 18, splashcreen_map);
  set_win_data(128, 49, characters);
  set_sprite_data(0, 1, bird);
  set_sprite_tile(0,0);
  set_sprite_tile(1,0);
  set_sprite_tile(2,0);

  uint8_t bird_loc_x = 100;
  uint8_t bird_one_loc_y = 50;
  uint8_t bird_two_loc_y = 56;
  uint8_t bird_three_loc_y = 62;

  STAT_REG = 0x45; // enable LYC=LY interrupt so that we can set a specific line it will fire at
  LYC_REG = 0x00;

  NR52_REG = 0x80;
  NR51_REG = 0xFF;
  NR50_REG = 0x77;

  disable_interrupts();
  add_LCD(interruptLCD);
  enable_interrupts();

  set_interrupts(VBL_IFLAG | LCD_IFLAG);

  SHOW_BKG;
  DISPLAY_ON;
  SHOW_SPRITES;

  add_VBL(hUGE_dosound);

  for (i = 0; i < 21; i++)
  {
    if(i % 3 == 0) backgroundoffset1x += 1;
    backgroundoffset2x += 0;
    backgroundoffset3x += 3;

    move_sprite(0, bird_loc_x, bird_one_loc_y);
    move_sprite(1, bird_loc_x + 105, bird_two_loc_y);
    move_sprite(2, bird_loc_x - 95, bird_three_loc_y);
    
    bird_loc_x -= 2;
    if(bird_loc_x == 0) bird_one_loc_y = 50 + i;
    else if(bird_loc_x + 105 == 0) bird_two_loc_y = 51 + i;
    else if(bird_loc_x - 95 == 0) bird_three_loc_y = 52 + i;

    

    performantdelay(5);

    if(joypad() & J_START) break;
    if(i == 20) i = 0;
  }

  backgroundoffset1x = 0;
  backgroundoffset2x = 0;
  backgroundoffset3x = 0;
  hUGE_mute_channel(0, 1);
  hUGE_mute_channel(1, 1);
  remove_VBL(hUGE_dosound);
}

void SetUp()
{
  fadeout();
  player.location[0] = 80;
  player.location[1] = 80;
  mid_air_frames = 200;
  player_animation_state = 2;
  player_shooting_animation_state = 0;
  explosion_sprite_index = 21;
  bullet.location[0] = 200;
  bullet.location[1] = 200;
  bullet.shoot_cooldown = 500;
  bullet.frames_since_last_shoot = 1000;
  player_speed = 15;
  JUMP_FORCE = 25;
  bullet.shot_right = TRUE;
  map_index = 0;
  player_armed = FALSE;
  ducking = FALSE;
  player.dead = FALSE;
  snail_moving_right = TRUE;
  boss_bat.health = 12;
  
  SHOW_SPRITES;
  SHOW_BKG;
  set_sprite_data(0, 20, TokoUnarmed);
  set_sprite_tile(2, 19);
  set_bkg_data(0, 66, map_tiles);
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
  set_win_data(128, 49, characters);
  set_sprite_data(123, 4, explosion);

  move_sprite(0, player.location[0], player.location[1]);
  move_sprite(1, player.location[0], player.location[1] + 8);

  disable_interrupts();
  add_LCD(interruptLCD);
  enable_interrupts();
  set_interrupts(VBL_IFLAG | LCD_IFLAG);
  fadein();
}

void GameLoop()
{
  for (ii = 0; ii < 10001; ii++)
  {
    Update();
    if(ii % player_speed == 0) Movement();
    MapController();
    JumpFall();
    Shoot();
    Animator();
    DeathAnimation();
    if(ii == 10000) { ii = 0; }
    prev_joypad_state = joypad_state;
  }
}

void MapController()
{
  if(map_index == 0){ // kings room
    MapZero();
  }
  else if(map_index == 1) { // kings room entrence
    MapOne();
  }
  else if(map_index == 2){ // gun room
    MapTwo();
  }
  else if(map_index == 3){ // level one with killer
    MapThree();
  }
  else if(map_index == 4){ // level two with fall
    MapFour();
  }
  else if(map_index == 5){ // hidden room one
    MapFive();
  }
  else if(map_index == 6){ // pit
    MapSix();
  }
  else if(map_index == 7){ // mystery entrence
    MapSeven();
  }
  else if(map_index == 8){ // key room
    MapEight();
  }
  else if(map_index == 9){ // room after door and before fly
    MapNine();
  }
  else if(map_index == 10){ // hidden room two
    MapTen();
  }
  else if(map_index == 11){ // button room
    MapEleven();
  }
  else if(map_index == 12){ // bat boss room
    MapTwelve();
  }
  else if(map_index == 13){ // forest one with small jumps
    MapThirteen();
  }
  else if(map_index == 14){ // forest two with big jumps
    MapFourteen();
  }
  else if(map_index == 15){ // stairs start room
    MapFifteen();
  }
  else if(map_index == 16){ // stairs
    MapSixteen();
  }
  else if(map_index == 17){ // final room
    MapSeventeen();
  }
}

void ResetGameBoy() {
  // dying sound
  NR10_REG = 0x1F;
  NR11_REG = 0xC1;
  NR12_REG = 0x63;  
  NR13_REG = 0x73;
  NR14_REG = 0xC6;
  while(1) {
    if (joypad() & J_START) break;
  }

  if(gold_two_took){
    MapTenStart(down);
  }  
  else if(gold_one_took){
    MapFiveStart(down);
  }
  else{
    reset();
  }
}

void Movement(){
  if(joypad_state & J_LEFT && PlayerCanMove(left)){
    player.location[0]--;
    moving_right = FALSE;
  }
  else if(joypad_state & J_RIGHT && PlayerCanMove(right)){
    player.location[0]++;
    moving_right = TRUE;
  }
}

UBYTE CheckPixlexCollision(uint8_t x, uint8_t y)
{
  x_tile = (x - 8) / 8;
  y_tile = (y - 16) / 8;
  tile_index = 20 * y_tile + x_tile;

  return maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2];
}

UBYTE PlayerCanMove(enum direction dir)
{
  if(dir == left){
    for (i = 0; i < 16; i += 5) {
      x_tile = (player.left - 9) / 8;
      y_tile = (player.up + i - 16) / 8;
      tile_index = 20 * y_tile + x_tile;

      if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
        return FALSE;
      }
    }
    return TRUE;
  }
  else if(dir == right){
    for (i = 0; i < 16; i += 5) {
      x_tile = (player.right - 7) / 8;
      y_tile = (player.up + i - 16) / 8;
      tile_index = 20 * y_tile + x_tile;

      if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
        return FALSE;
      }
    }
    return TRUE;
  }
  else if(dir == up){
    for (i = 0; i < 8; i += 7) {
      x_tile = (player.left + i - 8) / 8;
      y_tile = (player.up - 17) / 8;
      tile_index = 20 * y_tile + x_tile;

      if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
        return FALSE;
      }
    }
    return TRUE;    
  }
  else{
    for (i = 0; i < 8; i += 7) {
      x_tile = (player.left + i - 8) / 8;
      y_tile = (player.down - 15) / 8;
      tile_index = 20 * y_tile + x_tile;

      if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
        return FALSE;
      }
    }
    return TRUE;
  }
}

void JumpFall()
{
  if(joypad_state & J_UP && !mid_air && PlayerCanMove(up)){
    NR10_REG = 0x0B;
    NR11_REG = 0x06;
    NR12_REG = 0x34;  
    NR13_REG = 0x56;
    NR14_REG = 0xC6;
    mid_air_frames = 0;
  }

  if(ii % 8 != 0) {return;}

  if(mid_air_frames < JUMP_FORCE){
    mid_air = TRUE;
    mid_air_frames++;
    if(PlayerCanMove(up)) player.location[1] -= 1;
    else mid_air_frames = 240;
    return;
  }

  if(PlayerCanMove(down)){
    player.location[1] += 1;
    mid_air = TRUE;
  }
  else{
    mid_air = FALSE;
  }
  
}

void Update()
{
  move_sprite(0, player.location[0], player.location[1]);
  move_sprite(1, player.location[0], player.location[1] + 8);
  move_sprite(2, bullet.location[0], bullet.location[1]);
  player.up = player.location[1];
  player.down = player.location[1] + 15;
  player.left = player.location[0];
  player.right = player.location[0] + 7;
  joypad_state = joypad();
}

void Animator()
{
  if(prev_joypad_state != joypad_state){
    if(joypad_state & J_RIGHT){
      set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
      set_sprite_prop(1, get_sprite_prop(1) & ~S_FLIPX);
    }
    else if(joypad_state & J_LEFT){
      set_sprite_prop(0, S_FLIPX);
      set_sprite_prop(1, S_FLIPX);
    }
    if(joypad_state & J_DOWN){
      set_sprite_tile(0, 127);
      set_sprite_tile(1, 18);
      ducking = TRUE;
    }
    else ducking = FALSE;
  }

  if(ii % 40 == 0 && !mid_air){
    if(player_animation_state < 7) player_animation_state += 2;
    else player_animation_state = 2;

    if(player_shooting_animation_state < 4) player_shooting_animation_state += 2;
    else player_shooting_animation_state = 0;


    if(joypad_state & J_A && player_armed && !ducking){
      if(joypad_state & J_LEFT || joypad_state & J_RIGHT){
        set_sprite_tile(0, 12 + player_shooting_animation_state);
        set_sprite_tile(1, 13 + player_shooting_animation_state);
      }
      else{
        set_sprite_tile(0, 12);
        set_sprite_tile(1, 13);
      }
    }
    else if(joypad_state & (J_RIGHT | J_LEFT)){
      set_sprite_tile(0, player_animation_state);
      set_sprite_tile(1, player_animation_state + 1);
    }
    else if(!ducking){
      set_sprite_tile(0, 0);
      set_sprite_tile(1, 1);
    }
  }

  if(mid_air){
    set_sprite_tile(0, 10);
    set_sprite_tile(1, 11);
  }
}

void Shoot()
{
  if(!player_armed) return;

  if(joypad_state & J_A && bullet.frames_since_last_shoot > bullet.shoot_cooldown){
    // shooting sound
    // NR10_REG = 0x0B;
    // NR11_REG = 0x06;
    // NR12_REG = 0x34;  
    // NR13_REG = 0x56;
    // NR14_REG = 0xC6;

    NR41_REG = 0x09;
    NR42_REG = 0xF1;
    NR43_REG = 0x4F;  
    NR44_REG = 0x80;

    if(get_sprite_prop(1) == S_FLIPX){
      bullet.location[0] = player.location[0];
      if(ducking) bullet.location[1] = player.location[1] + 11;
      else bullet.location[1] = player.location[1] + 5;
      bullet.shot_right = FALSE;
    }
    else{
      bullet.location[0] = player.location[0] + 8;
      if(ducking) bullet.location[1] = player.location[1] + 11;
      else bullet.location[1] = player.location[1] + 5;
      bullet.shot_right = TRUE;
    }
    bullet.frames_since_last_shoot = 0;
  }
  bullet.frames_since_last_shoot++;

  if(ii % 2 == 0) return;

  if(bullet.location[0] > 1 && bullet.location[0] < 160 && !CheckPixlexCollision(bullet.location[0], bullet.location[1])){
    if(bullet.shot_right){
      bullet.location[0]++;
    }
    else{
      bullet.location[0]--;
    }
  }
  else{
    bullet.location[0] = 200;
  }
}

void GetGun()
{
  player_armed = TRUE;
  set_sprite_data(0, 20, Toko);
  set_sprite_tile(3, 127);
}

void MapZero()
{
  walkable_tiles[0] = walkable_tiles[1] = walkable_tiles[2] = 0x00;

  if(player.location[0] < 50) player.location[0] = 50;

  if(joypad_state == J_B && !king_dead){
    Dialogue(king_dialogue);
  }
  if(bullet.location[0] == 40 && !king_dead){
    set_bkg_tiles(2, 12, 2, 3, dead_king);
    Dialogue(king_death_dialogue_one);
    Dialogue(king_death_dialogue_two); 
    king_dead = TRUE;
  }
  if(player.location[0] > 159){
    MapOneStart(left);
  }
}

void MapOneStart(enum direction dir)
{
  fadeout();
  map_index = 1;
  walkable_tiles[0] = 0x00;
  walkable_tiles[1] = walkable_tiles[2] = 0x01;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
  if(!guard_dead){
    set_sprite_data(20, 3, guard);
    set_sprite_tile(3, 20);
    set_sprite_tile(4, 22);
    move_sprite(3, 152, 80);
    move_sprite(4, 152, 88);
  }
  
  if(dir == left) player.location[0] = 10;
  else if(dir == up){
    player.location[0] = 158;
    player.location[1] = 80;
  } 
  else if(dir == down){
    player.location[0] = 158;
    player.location[1] = 120;
  }
  fadein();
}

void MapOne()
{ 
  if(!guard_dead){
    if(ii % 300 == 0 && get_sprite_tile(3) == 21) set_sprite_tile(3, 20);
    else if(ii % 300 == 0) set_sprite_tile(3, 21);
  }
  else{
    if(get_sprite_tile(3) == 127) explosion_sprite_index = 4;
  }
  
  if(bullet.location[0] == 154 && bullet.location[1] >= 80 && bullet.location[1] <= 96 && !guard_dead){
    guard_dead = TRUE;
    Dialogue(guard_death_dialogue);
    explosion_sprite_index = 3;
  }

  if(player.location[0] < 9){
    fadeout();
    map_index = 0;
    player.location[0] = 158;
    set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
    if(king_dead) set_bkg_tiles(2, 12, 2, 3, dead_king);
    set_sprite_tile(3, 127);
    set_sprite_tile(4, 127);
    fadein();
  }
  else if(player.location[0] > 130 && player.location[1] < 120 && joypad_state == J_B && !guard_dead){
    if(player_armed) Dialogue(guard_dialogue_greet);
    else Dialogue(guard_dialogue);
  }
  else if(player.location[0] > 159 && player.location[1] < 120){
    MapTwoStart();
  }
  else if(player.location[0] > 159){
    MapThreeStart(left);
  }
}

void MapTwoStart()
{
  fadeout();
  map_index = 2;
  walkable_tiles[0] = walkable_tiles[1] = walkable_tiles[2] = 0x00;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
  player.location[0] = 10;
  player.location[1] = 128;
  set_sprite_tile(3, 127);
  set_sprite_tile(4, 127);

  // snail
  if(!snail[0].dead){
    set_sprite_data(20, 1, SnailDraw);
    set_sprite_tile(5, 20);
    snail[0].location[0] = 100;
    snail[0].location[1] = 136;
    snail[0].move_location[0] = 50;
    snail[0].move_location[1] = 105;
  }
  
  if(!player_armed){
    set_sprite_tile(3, 19);
    move_sprite(3, 148, 116);
  }
  fadein();
}

void MapTwo()
{
  SnailMovement(0, 5);
  SnailCollision(0, 5);

  if(player.location[0] > 140 && !player_armed){
    GetGun();
  }
  else if(player.location[0] < 9){
    set_sprite_tile(5, 127);
    MapOneStart(up);
  }
}

void MapThreeStart(enum direction dir)
{
  fadeout();
  explosion_sprite_index = 25;
  map_index = 3;
  walkable_tiles[0] = walkable_tiles[1] = walkable_tiles[2] = 0x00;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
  set_sprite_data(20, 3, killer_draw);
  if(!killer[0].dead){ 
    set_sprite_tile(3, 20);
    set_sprite_tile(4, 21);
    if(player_armed) set_sprite_tile(19, 19);
    else set_sprite_tile(19, 22);
    move_sprite(19, bullet_enemy.location[0], bullet_enemy.location[1]);
    move_sprite(3, 152, 104);
    move_sprite(4, 152, 112);
    killer[0].location[0] = 152;
    killer[0].location[1] = 104;
  }
  else{
    set_sprite_tile(3, 127);
    set_sprite_tile(4, 127);
    set_sprite_tile(5, 127);
  }
  

  if(dir == left) player.location[0] = 10;
  else if(dir == right) player.location[0] = 158;
  fadein();
}

void MapThree()
{
  KillerManager(0, 3, FALSE);

  if(player.location[0] < 9) MapOneStart(down);
  else if(player.location[0] > 159 && player_armed) MapFourStart(left);
  else if(player.location[0] > 159 && !player_armed && joypad_state == J_RIGHT) Dialogue(gunless_warning);
}

void MapFourStart(enum direction dir)
{
  fadeout();
  walkable_tiles[0] = walkable_tiles[1] = 0x00;
  walkable_tiles[2] = 0x07;
  map_index = 4;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);

  if(dir == left){
    player.location[0] = 10;
  }
  else if(dir == right){
    player.location[0] = 158;
  }
  fadein();
}

void MapFour()
{
  if(player.location[0] > 159) MapFiveStart(left);
  else if(player.location[0] < 9) {
    player.location[1]++;
    MapThreeStart(right);
  }
  else if(player.location[1] > 143) MapSixStart(up);
}

void MapFiveStart(enum direction dir)
{
  fadeout();
  map_index = 5;
  walkable_tiles[0] = 0x00;
  walkable_tiles[1] = 0x07;
  walkable_tiles[2] = 0x08;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);

  if(dir == left){
    player.location[0] = 10;
  }
  else if(dir == down){
    player.location[0] = 152;
    player.location[1] = 104;
  }

  gold.location[0] = 152;
  gold.location[1] = 108;
  if(!gold_one_took) {
    set_sprite_data(20, 6, coin);
    set_sprite_tile(3, 20);
    move_sprite(3, gold.location[0], gold.location[1]);
  }
  else{
    set_sprite_tile(3,127);
    set_sprite_tile(4,127);
    set_sprite_tile(5,127);
    set_sprite_tile(6,127);
    set_sprite_tile(7,127);
    set_sprite_tile(19,127);
  }
  gold.location[0] = 152;
  gold.location[1] = 108;
  fadein();
}

void MapFive()
{
  if(ii % 100 == 0 && !gold_one_took){
    uint8_t gold_sprite = get_sprite_tile(3);
    if(gold_sprite < 25) set_sprite_tile(3, gold_sprite + 1);
    else set_sprite_tile(3, 20);
  }

  if(player.location[0] > 148 && !gold_one_took) {
    set_sprite_tile(3, 127);
    gold_one_took = TRUE;
    Dialogue(take_coin_dialogue);
  }
  else if(player.location[0] < 10) {
    set_sprite_tile(3, 127);
    MapFourStart(right);
  }
}

void MapSixStart(enum direction dir)
{
  fadeout();
  map_index = 6;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
  walkable_tiles[0] = walkable_tiles[1] = 0x00;
  walkable_tiles[2] = 0x07;
  if(dir == up){
    player.location[1] = 16;
    player.location[0] -= 40;
  }
  else if(dir == right){
    player.location[0] = 158;
    player.location[1] += 7;
  }
  else if(dir == left){
    player.location[0] = 10;
  }
  
  fadein();
}

void MapSix()
{
  if(player.location[0] > 159) MapSevenStart(left);
  else if(player.location[0] < 10) MapEightStart();
}

void MapSevenStart(enum direction dir)
{
  fadeout();
  map_index = 7;
  walkable_tiles[0] = 0x00;
  walkable_tiles[1] = walkable_tiles[2] = 0x13;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);

  if(dir == left){
    player.location[0] = 10;
    player.location[1] -= 8;
  }
  else if (dir == right){
    player.location[0] = 158;
    player.location[1] -= 8;
  }
  fadein();
}

void MapSeven()
{
  if(player.location[0] < 9) MapSixStart(right);
  else if(player.location[0] > 135 && joypad_state & J_B){
    if(player.has_key[0]){
      walkable_tiles[2] = 0x14;
      Dialogue(door_open_dialogue);
    }
    else Dialogue(need_key_dialogue);
  }
  else if(player.location[1] > 124) ResetGameBoy();
  else if(player.location[0] > 159){
    MapNineStart(down);
  }
}

void MapEightStart()
{
  fadeout();
  map_index = 8;
  walkable_tiles[0] = 0x00;
  walkable_tiles[1] = 0x16;
  walkable_tiles[2] = 0x20;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
  player.location[0] = 158;

  if(!snail[1].dead){
    set_sprite_data(20, 1, SnailDraw);
    set_sprite_tile(5, 20);
    snail[1].location[0] = 100;
    snail[1].location[1] = 136;
    snail[1].move_location[0] = 50;
    snail[1].move_location[1] = 120;
  }

  if(!killer[1].dead){
    set_sprite_data(21, 3, killer_draw);
    set_sprite_tile(6, 21);
    set_sprite_tile(7, 22);
    set_sprite_tile(19, 19);
    move_sprite(19, bullet_enemy.location[0], bullet_enemy.location[1]);
    move_sprite(6, 144, 64);
    move_sprite(7, 144, 72);
    killer[1].location[0] = 144;
    killer[1].location[1] = 64;
  }
  
  if(player.has_key[0]){
    set_bkg_tiles(1, 3, 1, 1, blankmap);
  }

  if(!player_armed){
    set_sprite_tile(3, 19);
    move_sprite(3, 148, 116);
  }
  fadein();
}

void MapEight()
{
  KillerManager(1, 6, FALSE);
  SnailMovement(1, 5);
  SnailCollision(1, 5);

  if(player.location[0] < 24 && player.location[1] < 48){
    set_bkg_tiles(1, 3, 1, 1, blankmap);
    player.has_key[0] = TRUE;
  }
  else if(player.location[0] > 159){
    set_sprite_tile(5, 127);
    set_sprite_tile(6, 127);
    set_sprite_tile(7, 127);

    MapSixStart(left);
  } 
}

void MapNineStart(enum direction dir)
{
  fadeout();
  map_index = 9;
  walkable_tiles[0] = 0x00;
  walkable_tiles[1] = 0x08;
  walkable_tiles[2] = 0x15;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
  set_sprite_data(20, 2, dude);
  set_sprite_tile(3, 20);
  set_sprite_tile(4, 21);

  invincible.location[1] = 128;
  invincible.location[0] = 104;
  move_sprite(3, invincible.location[0], invincible.location[1]);
  move_sprite(4, invincible.location[0], invincible.location[1] + 8);

  if(dir == down) {
    player.location[0] = 10;
    player.location[1] += 8;
  }
  else if(dir == up){
    player.location[0] = 10;
    player.location[1] = 64;
  }
  else if(dir == right){
    player.location[0] = 158;
    player.location[1] = 24;
  }
  fadein();
}

void MapNine()
{
  if( (player.location[0] > 136 && player.location[1] > 56) || (player.location[0] < 32 && player.location[1] < 88) ) JUMP_FORCE = 72;
  else JUMP_FORCE = 25;

  if(player.location[1] == invincible.location[1] && player.location[0] - invincible.location[0] < 16 && player.location[0] - invincible.location[0] > -16 && joypad_state & J_B){
    if(!gold_two_took) Dialogue(invincible_dialogue);
    else set_sprite_data(0, 19, toko_with_hat);
  }
  if(bullet.location[0] == invincible.location[0] && bullet.location[1] >= invincible.location[1]){
    Dialogue(invincible_shoot);
  }

  if(player.location[0] < 9 && player.location[1] > 96){
    JUMP_FORCE = 25;
    set_sprite_tile(3, 127);
    set_sprite_tile(4, 127);
    MapSevenStart(right);
  }
  else if(player.location[0] < 9){
    JUMP_FORCE = 25;
    set_sprite_tile(3, 127);
    set_sprite_tile(4, 127);
    MapTenStart(right);
  } 
  else if(player.location[0] > 159){
    JUMP_FORCE = 25;
    set_sprite_tile(3, 127);
    set_sprite_tile(4, 127);
    player.location[1] += 24;
    MapElevenStart();
  }
}

void MapTenStart(enum direction dir)
{
  fadeout();
  map_index = 10;
  walkable_tiles[0] = 0x00;
  walkable_tiles[1] = 0x07;
  walkable_tiles[2] = 0x08;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);

  if(!gold_two_took){
    set_sprite_data(20, 6, coin);
    set_sprite_tile(3, 20);
  }
  else{
    set_sprite_tile(3,127);
    set_sprite_tile(4,127);
    set_sprite_tile(5,127);
    set_sprite_tile(6,127);
    set_sprite_tile(19,127);
  }

  if(dir == right){
    player.location[0] = 158;
  }
  else if(dir == down){
    player.location[0] = 20;
    player.location[1] = 128;
  }
  gold.location[0] = 20;
  gold.location[1] = 132;
  move_sprite(3, gold.location[0], gold.location[1]);
  fadein();
}

void MapTen()
{
  if(ii % 100 == 0 && !gold_two_took){
    if(get_sprite_tile(3) < 25) set_sprite_tile(3, get_sprite_tile(3) + 1);
    else set_sprite_tile(3, 20);
  }
  
  if(player.location[0] > 159){
    set_sprite_tile(3, 127);
    MapNineStart(up);
  }
  else if(!gold_two_took && player.location[0] < 32 && player.location[1] > 120){
    set_sprite_tile(3, 127);
    gold_two_took = TRUE;
    Dialogue(take_coin_dialogue);
  }
}

void MapElevenStart()
{
  fadeout();
  map_index = 11;
  walkable_tiles[0] = walkable_tiles[1] = 0x00;
  walkable_tiles[2] = 0x35;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
  player.location[0] = 10;
  player.location[1] -= 2;
  set_bkg_tiles(20, 18, 1, 1, blankmap);
  fadein();
}

void MapEleven()
{
  if(player.location[0] > 118) player.location[0] = 118;
  else if(player.location[0] == 118 && player.location[1] == 56 && joypad_state == J_B) {
    Dialogue(button_click);
    for (i = 0; i < 80; i++){
      scroll_bkg(0,-1);
      scroll_sprite(0,0,-1);
      scroll_sprite(1,0,-1);
      performantdelay(4);
    }
    move_bkg(0,0);
    MapTwelveStart(down);
  }
  else if(player.location[0] < 9) MapNineStart(right);
}

void MapTwelveStart(enum direction dir)
{
  fadeout();
  backgroundoffset1x = 0;
  backgroundoffset2x = 0;
  backgroundoffset3x = 0;
  backgroundoffset1y = 0;
  backgroundoffset2y = 0;
  backgroundoffset3y = 0;

  map_index = 12;
  walkable_tiles[0] = walkable_tiles[1] = 0x00;
  walkable_tiles[2] = 0x35;
  if(boss_bat.dead) walkable_tiles[1] = 0x14;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
  if(dir == down) {
    player.location[1] = 134;
    boss_bat.location[0] = 100;
    boss_bat.location[1] = 100;
    set_sprite_data(20, 1, fly);
    set_sprite_tile(3, 20);
    DisplayBatHealth();
  }
  else if (dir == right){
    player.location[0] = 158;
    player.location[1] = 72;
  }
  
  fadein();
}

void MapTwelve()
{
  int8_t location_diff_x = player.location[0] - boss_bat.location[0];
  int8_t location_diff_y = boss_bat.location[1] - player.location[1];

  if(!boss_bat.dead){
    if(ii % 80 == 0){
      if(player.location[0] > boss_bat.location[0]) boss_bat.location[0]++;
      else boss_bat.location[0]--;
      if(player.location[1] > boss_bat.location[1]) boss_bat.location[1]++;
      else boss_bat.location[1]--;

      move_sprite(3, boss_bat.location[0], boss_bat.location[1]);
    }

    if(location_diff_x < 8 && location_diff_x > -8 && location_diff_y < 16 && location_diff_y > -8){
      ResetGameBoy();
    }
    if(bullet.location[0] == boss_bat.location[0] && bullet.location[1] >= boss_bat.location[1] && bullet.location[1] <= boss_bat.location[1] + 8){
      NR21_REG = 0xC0;
      NR22_REG = 0xE1;
      NR23_REG = 0xF4;
      NR24_REG = 0x81;
      boss_bat.health--;
      DisplayBatHealth();
      bullet.location[0] = 200;
      if(boss_bat.health < 1) {
        boss_bat.dead = TRUE;
        explosion_sprite_index = 3;
        walkable_tiles[1] = 0x14;
      }
    }
  }

  if(player.location[0] > 159){
    player.location[0] = 10;
    MapThirteenStart(left);
  }
}

void DisplayBatHealth()
{
  if(boss_bat.health == 12){}
  switch (boss_bat.health)
  {
  case 12:
    set_bkg_tiles(0, 0, 2, 1, hp_12);
    break;
  case 11:
    set_bkg_tiles(0, 0, 2, 1, hp_11);
    break;
  case 10:
    set_bkg_tiles(0, 0, 2, 1, hp_10);
    break;
  case 9:
    set_bkg_tiles(0, 0, 2, 1, hp_9);
    break;
  case 8:
    set_bkg_tiles(0, 0, 2, 1, hp_8);
    break;
  case 7:
    set_bkg_tiles(0, 0, 2, 1, hp_7);
    break;
  case 6:
    set_bkg_tiles(0, 0, 2, 1, hp_6);
    break;
  case 5:
    set_bkg_tiles(0, 0, 2, 1, hp_5);
    break;
  case 4:
    set_bkg_tiles(0, 0, 2, 1, hp_4);
    break;
  case 3:
    set_bkg_tiles(0, 0, 2, 1, hp_3);
    break;
  case 2:
    set_bkg_tiles(0, 0, 2, 1, hp_2);
    break;
  case 1:
    set_bkg_tiles(0, 0, 2, 1, hp_1);
    break;
  case 0:
    set_bkg_tiles(0, 0, 2, 1, hp_0);
    break;
  default:
    break;
  }
}

void MapThirteenStart(enum direction dir)
{
  fadeout();
  map_index = 13;
  walkable_tiles[0] = 0x00;
  walkable_tiles[1] = 0x13;
  walkable_tiles[2] = 0x3F;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
  if(dir == left){
    player.location[1] = 64;
    player.location[0] = 10;
  }
  else if(dir == right){
    player.location[0] = 158;
  }
  fadein();
}

void MapThirteen()
{
  if(player.location[1] >= 142) ResetGameBoy();
  else if(player.location[0] > 159) MapFourteenStart(left);
  else if(player.location[0] < 9) MapTwelveStart(right);
}

void MapFourteenStart(enum direction dir)
{
  fadeout();
  map_index = 14;
  walkable_tiles[0] = 0x00;
  walkable_tiles[1] = 0x13;
  walkable_tiles[2] = 0x38;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
  if(dir == left){
    player.location[0] = 10;
  }
  else if(dir == right){
    player.location[0] = 158;
  }
  player.location[1] = 64;
  
  fadein();
}

void MapFourteen()
{
  if(bullet.location[0] == 124 && bullet.location[1] >= 56) set_bkg_tiles(14, 7, 1, 1, blankmap);
  if(player.location[1] >= 142) ResetGameBoy();
  else if(player.location[0] < 9) MapThirteenStart(right);
  else if(player.location[0] > 159) MapFifteenStart(left);
}

void MapFifteenStart(enum direction dir)
{
  fadeout();
  map_index = 15;
  walkable_tiles[1] = walkable_tiles[2] = 0x3F;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);

  if(dir == left){
    player.location[0] = 10;
    player.location[1] += 56;
  } 
  fadein();
}

void MapFifteen()
{
  if(player.location[0] < 9) MapFourteenStart(right);
  else if(player.location[1] > 143) MapSixteenStart(up);
}

void MapSixteenStart(enum direction dir)
{
  fadeout();
  map_index = 16;
  walkable_tiles[1] = walkable_tiles[1] = 0x33;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);

  if(dir == up){
    player.location[0] = 10;
    player.location[1] = 40;
  }
  else if(dir == down){
    player.location[0] = 158;
  }
  fadein();
}

void MapSixteen()
{
  if(player.location[0] > 159) MapSixteenStart(up);
  else if(player.location[0] < 9) MapSeventeenStart();
}

void MapSeventeenStart()
{
  map_index = 17;
  set_bkg_tiles(0, 0, 20, 18, maps[map_index]);

  if(king_dead){
    set_bkg_tiles(2, 13, 2, 3, dead_king);
  }

  player.location[0] = 136;
  player.location[1] = 136;
}

void MapSeventeen()
{
  if(bullet.location[0] == 41 && bullet.location[1] >= 128 && !king_dead){
    set_bkg_tiles(2, 13, 2, 3, dead_king);
    Dialogue(king_death_dialogue_one);
    Dialogue(king_death_dialogue_two); 
    king_dead = TRUE;
  }

  if(player.location[1] > 143) MapSixteenStart(up);
  else if(player.location[0] > 40 && player.location[0] < 80 && player.location[1] == 128 && joypad_state & J_B){
    if(king_dead){
      Dialogue(king_dead_ending_dialogue);
    }
    else{
      Dialogue(king_alive_ending_dialogue);
      ExplodePlanetAnimation();
    }
    reset();
  }
  else if(joypad_state & J_B) Dialogue(king_last_dialogue);
}

void ExplodePlanetAnimation()
{
  HIDE_BKG;
  set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
  set_sprite_prop(1, get_sprite_prop(1) & ~S_FLIPX);
  set_sprite_data(0, 9, Planet);
  set_sprite_tile(0, 0);
  set_sprite_tile(1, 1);
  set_sprite_tile(2, 2);
  set_sprite_tile(3, 3);
  set_sprite_tile(4, 4);
  set_sprite_tile(5, 5);
  set_sprite_tile(6, 6);
  set_sprite_tile(7, 7);
  set_sprite_tile(8, 8);

  move_sprite(0, 60, 70);
  move_sprite(1, 60, 78);
  move_sprite(2, 60, 86);
  move_sprite(3, 68, 70);
  move_sprite(4, 68, 78);
  move_sprite(5, 68, 86);
  move_sprite(6, 76, 70);
  move_sprite(7, 76, 78);
  move_sprite(8, 76, 86);

  performantdelay(40);

  for(i = 0; i < 5; i++){
    NR10_REG = 0x4F;
    NR11_REG = 0xC1;
    NR12_REG = 0x82;  
    NR13_REG = 0xDC;
    NR14_REG = 0xC5;
    set_sprite_tile(0, 123 + i);
    set_sprite_tile(1, 123 + i);
    set_sprite_tile(2, 123 + i);
    set_sprite_tile(3, 123 + i);
    set_sprite_tile(4, 123 + i);
    set_sprite_tile(5, 123 + i);
    set_sprite_tile(6, 123 + i);
    set_sprite_tile(7, 123 + i);
    set_sprite_tile(8, 123 + i);
    wait_vbl_done();
    wait_vbl_done();
    wait_vbl_done();
    wait_vbl_done();
    wait_vbl_done();
    wait_vbl_done();
    wait_vbl_done();
    wait_vbl_done();
  }

  performantdelay(40);
  fadeout();
}

void fadeout(){
  HIDE_SPRITES;
	for(i=0;i<4;i++){
		switch(i){
			case 0:
				BGP_REG = 0xE4;
				break;
			case 1:
				BGP_REG = 0xF9;
				break;
			case 2:
				BGP_REG = 0xFE;
				break;
			case 3:
				BGP_REG = 0xFF;	
				break;						
		}
		performantdelay(3);
	}
}

void fadein(){
	for(i=0;i<3;i++){
		switch(i){
			case 0:
				BGP_REG = 0xFE;
        
				break;
			case 1:
				BGP_REG = 0xF9;
				break;
			case 2:
				BGP_REG = 0xE4;
				break;					
		}
		performantdelay(3);
	}
  SHOW_SPRITES;
}

void performantdelay(uint8_t numloops)
{
  uint8_t nums;
  for(nums = 0; nums < numloops; nums++){
    wait_vbl_done();
  }
}

void SnailManager(uint8_t snail_index, uint8_t sprite_index)
{
  SnailMovement(snail_index, sprite_index);
  SnailCollision(snail_index, sprite_index);
}

void SnailMovement(uint8_t snail_index, uint8_t sprite_index)
{
  if(ii % 19 != 0 || snail[snail_index].dead) {
    return;
  }

  if(snail_moving_right) snail[snail_index].location[0]++;
  else snail[snail_index].location[0]--;

  NR10_REG = 0x7F;
  NR11_REG = 0xC1;
  NR12_REG = 0x47;  
  NR13_REG = 0x90;
  NR14_REG = 0xC1;

  if(map_index == 2 && !snail[0].dead && snail[0].location[0] == 120){
    snail_moving_right = FALSE;
    set_sprite_prop(sprite_index, S_FLIPX);
  }
  
  if(snail[snail_index].location[0] == snail[snail_index].move_location[0]){
    snail_moving_right = TRUE;
    set_sprite_prop(sprite_index, get_sprite_prop(sprite_index) & ~S_FLIPX);
  }
  else if(snail[snail_index].location[0] == snail[snail_index].location[1]){
    snail_moving_right = FALSE;
    set_sprite_prop(sprite_index, S_FLIPX);
  }

  move_sprite(sprite_index, snail[snail_index].location[0], snail[snail_index].location[1]);
}

void SnailCollision(uint8_t snail_index, uint8_t sprite_index)
{
  if(snail[snail_index].dead) return;

  int8_t location_diff_x = player.location[0] - snail[snail_index].location[0];
  int8_t location_diff_y = snail[snail_index].location[1] - player.location[1];

  if(location_diff_x < 8 && location_diff_x > -8 && location_diff_y < 14 && location_diff_y > -8){
    ResetGameBoy();
  }
  if(bullet.location[0] == snail[snail_index].location[0] && bullet.location[1] >= snail[snail_index].location[1] && bullet.location[1] <= snail[snail_index].location[1] + 8){
    explosion_sprite_index = sprite_index;
    snail[snail_index].dead = TRUE;
    bullet.location[0] = 200;
  }
}

void KillerManager(uint8_t killer_index, uint8_t sprite_index, UBYTE looking_right)
{
  // bullet movement
  if(looking_right){
    if(ii % 700 == 0 && !killer[killer_index].dead){
      // bullet sound
      // NR10_REG = 0x0B;
      // NR11_REG = 0x06;
      // NR12_REG = 0x34;  
      // NR13_REG = 0x56;
      // NR14_REG = 0xC6;
      bullet_enemy.location[0] = killer[killer_index].location[0] + 8;
      bullet_enemy.location[1] = killer[killer_index].location[1] + 7;
    }

    if(bullet_enemy.location[0] < 168) {
      bullet_enemy.location[0]++;
    }
  }
  else{
    if(ii % 700 == 0 && !killer[killer_index].dead){
      NR10_REG = 0x0B;
      NR11_REG = 0x06;
      NR12_REG = 0x34;  
      NR13_REG = 0x56;
      NR14_REG = 0xC6;
      bullet_enemy.location[0] = killer[killer_index].location[0];
      bullet_enemy.location[1] = killer[killer_index].location[1] + 7;
    }

    if(bullet_enemy.location[0] > 0) {
      bullet_enemy.location[0]--;
    }
  }
  move_sprite(19, bullet_enemy.location[0], bullet_enemy.location[1]);

  // death animation
  if(killer[killer_index].dead && get_sprite_tile(sprite_index) == 127) explosion_sprite_index = sprite_index + 1;
  if(killer[killer_index].dead) return;

  // kill player
  if((bullet_enemy.location[0] >= player.left && bullet_enemy.location[0] <= player.right && bullet_enemy.location[1] >= player.up && bullet_enemy.location[1] <= player.down && !ducking)
    || (bullet_enemy.location[0] >= player.left && bullet_enemy.location[0] <= player.right && bullet_enemy.location[1] >= player.up + 8 && bullet_enemy.location[1] <= player.down && ducking)){
    ResetGameBoy();
  }

  // kill killer
  if(bullet.location[0] == killer[killer_index].location[0] && bullet.location[1] <= killer[killer_index].location[1] + 16 && bullet.location[1] >= killer[killer_index].location[1]){ 
    explosion_sprite_index = sprite_index;
    killer[killer_index].dead = TRUE;
  }
}

void DeathAnimation()
{
  if(explosion_sprite_index > 20 || ii % 9 != 0) return;

  if(get_sprite_tile(explosion_sprite_index) < 123){
    NR10_REG = 0x4F;
    NR11_REG = 0xC1;
    NR12_REG = 0x82;  
    NR13_REG = 0xDC;
    NR14_REG = 0xC5;
    set_sprite_tile(explosion_sprite_index, 123);
    return;
  }
  else if(get_sprite_tile(explosion_sprite_index) == 123){
    set_sprite_tile(explosion_sprite_index, 124);
    return;
  }
  else if(get_sprite_tile(explosion_sprite_index) == 124){
    set_sprite_tile(explosion_sprite_index, 125);
    return;
  }
  else if(get_sprite_tile(explosion_sprite_index) == 125){
    set_sprite_tile(explosion_sprite_index, 126);
    return;
  }
  else if(get_sprite_tile(explosion_sprite_index) == 126){
    set_sprite_tile(explosion_sprite_index, 127);
    return;
  }
}

void Dialogue(unsigned char dialogue[360])
{
  HIDE_SPRITES;
  SHOW_WIN;

  set_win_tiles(0, 0, 20, 18, dialogue);

  waitpadup();

  waitpad(J_B);

  waitpadup();

  HIDE_WIN;
  SHOW_SPRITES;
}

void interruptLCD()
{
    switch (LYC_REG)
    {
        case 0x00:
            move_bkg(backgroundoffset1x,backgroundoffset1y);
            LYC_REG = 0x35;
            break;
        case 0x35:
            move_bkg(backgroundoffset2x,backgroundoffset2y);
            LYC_REG = 0x6c;
            break;
        case 0x6c:
            move_bkg(backgroundoffset3x,backgroundoffset3y);
            LYC_REG = 0x00;
            break;
    }
}
