;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _hUGE_init
	.globl _printf
	.globl _set_sprite_data
	.globl _set_win_tiles
	.globl _set_win_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _reset
	.globl _set_interrupts
	.globl _waitpadup
	.globl _waitpad
	.globl _joypad
	.globl _add_LCD
	.globl _bird
	.globl _button_click
	.globl _guard_dialogue_greet
	.globl _map_tiles
	.globl _gunless_warning
	.globl _fly
	.globl _guard_dialogue
	.globl _characters
	.globl _backgroundoffset3y
	.globl _backgroundoffset2y
	.globl _backgroundoffset1y
	.globl _backgroundoffset3x
	.globl _backgroundoffset2x
	.globl _backgroundoffset1x
	.globl _explosion_sprite_index
	.globl _prev_joypad_state
	.globl _joypad_state
	.globl _walkable_tiles
	.globl _map_index
	.globl _tile_index
	.globl _y_tile
	.globl _x_tile
	.globl _moving_right
	.globl _player_shooting_animation_state
	.globl _player_animation_state
	.globl _mid_air
	.globl _mid_air_frames
	.globl _ii
	.globl _i
	.globl _ducking
	.globl _gold_two_took
	.globl _gold_one_took
	.globl _player_armed
	.globl _bullet_enemy
	.globl _bullet
	.globl _boss_bat
	.globl _gold
	.globl _snail
	.globl _killer
	.globl _player
	.globl _player_speed
	.globl _JUMP_FORCE
	.globl _main_menu_song
	.globl _blankmap
	.globl _splashcreen_map
	.globl _splashcreen_data
	.globl _parallax_background_map
	.globl _parallax_background_data
	.globl _explosion
	.globl _king_dialogue
	.globl _coin
	.globl _killer_draw
	.globl _SnailDraw
	.globl _guard
	.globl _maps
	.globl _TokoUnarmed
	.globl _Toko
	.globl _SplashScreen
	.globl _SetUp
	.globl _GameLoop
	.globl _MapController
	.globl _ResetGameBoy
	.globl _Movement
	.globl _CheckPixlexCollision
	.globl _PlayerCanMove
	.globl _JumpFall
	.globl _Update
	.globl _Animator
	.globl _Shoot
	.globl _GetGun
	.globl _MapZero
	.globl _MapOneStart
	.globl _MapOne
	.globl _MapTwoStart
	.globl _MapTwo
	.globl _MapThreeStart
	.globl _MapThree
	.globl _MapFourStart
	.globl _MapFour
	.globl _MapFiveStart
	.globl _MapFive
	.globl _MapSixStart
	.globl _MapSix
	.globl _MapSevenStart
	.globl _MapSeven
	.globl _MapEightStart
	.globl _MapEight
	.globl _MapNineStart
	.globl _MapNine
	.globl _MapTenStart
	.globl _MapTen
	.globl _MapElevenStart
	.globl _MapEleven
	.globl _MapTwelveStart
	.globl _MapTwelve
	.globl _fadeout
	.globl _fadein
	.globl _performantdelay
	.globl _SnailManager
	.globl _SnailMovement
	.globl _SnailCollision
	.globl _KillerManager
	.globl _DeathAnimation
	.globl _Dialogue
	.globl _interruptLCD
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_JUMP_FORCE::
	.ds 1
_player_speed::
	.ds 1
_player::
	.ds 8
_killer::
	.ds 10
_snail::
	.ds 10
_gold::
	.ds 2
_boss_bat::
	.ds 4
_bullet::
	.ds 7
_bullet_enemy::
	.ds 7
_player_armed::
	.ds 1
_gold_one_took::
	.ds 1
_gold_two_took::
	.ds 1
_ducking::
	.ds 1
_i::
	.ds 1
_ii::
	.ds 2
_mid_air_frames::
	.ds 1
_mid_air::
	.ds 1
_player_animation_state::
	.ds 1
_player_shooting_animation_state::
	.ds 1
_moving_right::
	.ds 1
_x_tile::
	.ds 1
_y_tile::
	.ds 1
_tile_index::
	.ds 2
_map_index::
	.ds 1
_walkable_tiles::
	.ds 3
_joypad_state::
	.ds 1
_prev_joypad_state::
	.ds 1
_explosion_sprite_index::
	.ds 1
_backgroundoffset1x::
	.ds 1
_backgroundoffset2x::
	.ds 1
_backgroundoffset3x::
	.ds 1
_backgroundoffset1y::
	.ds 1
_backgroundoffset2y::
	.ds 1
_backgroundoffset3y::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_characters::
	.ds 784
_guard_dialogue::
	.ds 360
_fly::
	.ds 96
_gunless_warning::
	.ds 360
_map_tiles::
	.ds 912
_guard_dialogue_greet::
	.ds 360
_button_click::
	.ds 360
_bird::
	.ds 16
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:122: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:124: hUGE_init(&main_menu_song);
	ld	de, #_main_menu_song
	call	_hUGE_init
;main.c:125: SplashScreen();
	call	_SplashScreen
;main.c:127: SetUp();
	call	_SetUp
;main.c:128: GameLoop();
;main.c:129: }
	jp	_GameLoop
_Toko:
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x68	; 104	'h'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x50	; 80	'P'
	.db #0x56	; 86	'V'
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x28	; 40
	.db #0x2a	; 42
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x88	; 136
	.db #0x8b	; 139
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x62	; 98	'b'
	.db #0x62	; 98	'b'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x28	; 40
	.db #0x2e	; 46
	.db #0x28	; 40
	.db #0x2a	; 42
	.db #0x14	; 20
	.db #0x16	; 22
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x4c	; 76	'L'
	.db #0x4c	; 76	'L'
	.db #0x08	; 8
	.db #0x68	; 104	'h'
	.db #0x14	; 20
	.db #0x34	; 52	'4'
	.db #0x14	; 20
	.db #0x34	; 52	'4'
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x13	; 19
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x09	; 9
	.db #0xc9	; 201
	.db #0x08	; 8
	.db #0x48	; 72	'H'
	.db #0x14	; 20
	.db #0x54	; 84	'T'
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x63	; 99	'c'
	.db #0x63	; 99	'c'
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xf7	; 247
	.db #0x62	; 98	'b'
	.db #0x66	; 102	'f'
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x27	; 39
	.db #0x78	; 120	'x'
	.db #0x7c	; 124
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x27	; 39
	.db #0x78	; 120	'x'
	.db #0x7c	; 124
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x27	; 39
	.db #0x78	; 120	'x'
	.db #0x7c	; 124
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0x70	; 112	'p'
	.db #0x77	; 119	'w'
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0xd8	; 216
	.db #0xd8	; 216
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_TokoUnarmed:
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x68	; 104	'h'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x62	; 98	'b'
	.db #0x62	; 98	'b'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x4c	; 76	'L'
	.db #0x4c	; 76	'L'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x13	; 19
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x63	; 99	'c'
	.db #0x63	; 99	'c'
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x62	; 98	'b'
	.db #0x62	; 98	'b'
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x34	; 52	'4'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_maps:
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x29	; 41
	.db #0x2c	; 44
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x2a	; 42
	.db #0x2d	; 45
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x2b	; 43
	.db #0x2e	; 46
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x34	; 52	'4'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x17	; 23
	.db #0x1a	; 26
	.db #0x1d	; 29
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x90	; 144
	.db #0x8a	; 138
	.db #0x96	; 150
	.db #0x92	; 146
	.db #0x97	; 151
	.db #0x90	; 144
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x19	; 25
	.db #0x1c	; 28
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x96	; 150
	.db #0x98	; 152
	.db #0x97	; 151
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0x8e	; 142
	.db #0x9b	; 155
	.db #0x9c	; 156
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x13	; 19
	.db #0x13	; 19
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x13	; 19
	.db #0x13	; 19
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x10	; 16
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x12	; 18
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x35	; 53	'5'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x35	; 53	'5'
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
_guard:
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x66	; 102	'f'
	.db #0x7e	; 126
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x7e	; 126
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0xbd	; 189
	.db #0x99	; 153
	.db #0xa5	; 165
	.db #0x81	; 129
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0xe7	; 231
	.db #0xe7	; 231
_SnailDraw:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x7a	; 122	'z'
	.db #0x78	; 120	'x'
	.db #0x7c	; 124
	.db #0x7a	; 122	'z'
	.db #0x3e	; 62
	.db #0x30	; 48	'0'
_killer_draw:
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0xe0	; 224
	.db #0xef	; 239
	.db #0x20	; 32
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_coin:
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x3c	; 60
	.db #0x30	; 48	'0'
	.db #0x34	; 52	'4'
	.db #0x38	; 56	'8'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x3e	; 62
	.db #0x64	; 100	'd'
	.db #0x2e	; 46
	.db #0x74	; 116	't'
	.db #0x26	; 38
	.db #0x7c	; 124
	.db #0x26	; 38
	.db #0x7c	; 124
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x1c	; 28
	.db #0x38	; 56	'8'
	.db #0x26	; 38
	.db #0x7c	; 124
	.db #0x43	; 67	'C'
	.db #0xfe	; 254
	.db #0x73	; 115	's'
	.db #0xce	; 206
	.db #0x34	; 52	'4'
	.db #0x6e	; 110	'n'
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x1c	; 28
	.db #0x38	; 56	'8'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x76	; 118	'v'
	.db #0x2c	; 44
	.db #0x7e	; 126
	.db #0x24	; 36
	.db #0x38	; 56	'8'
	.db #0x1c	; 28
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x38	; 56	'8'
	.db #0x1c	; 28
	.db #0x38	; 56	'8'
	.db #0x1c	; 28
	.db #0x38	; 56	'8'
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x08	; 8
	.db #0x3c	; 60
	.db #0x08	; 8
	.db #0x3c	; 60
	.db #0x10	; 16
	.db #0x18	; 24
_king_dialogue:
	.db #0xa9	; 169
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xae	; 174
	.db #0xaa	; 170
	.db #0x8d	; 141
	.db #0x8e	; 142
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0x9b	; 155
	.db #0x98	; 152
	.db #0xa2	; 162
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x8a	; 138
	.db #0x95	; 149
	.db #0x95	; 149
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x95	; 149
	.db #0x92	; 146
	.db #0x9f	; 159
	.db #0x92	; 146
	.db #0x97	; 151
	.db #0x90	; 144
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x8c	; 140
	.db #0x9b	; 155
	.db #0x8e	; 142
	.db #0x8a	; 138
	.db #0x9d	; 157
	.db #0x9e	; 158
	.db #0x9b	; 155
	.db #0x8e	; 142
	.db #0x9c	; 156
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x98	; 152
	.db #0x97	; 151
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x9d	; 157
	.db #0x91	; 145
	.db #0x92	; 146
	.db #0x9c	; 156
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x99	; 153
	.db #0x95	; 149
	.db #0x8a	; 138
	.db #0x97	; 151
	.db #0x8e	; 142
	.db #0x9d	; 157
	.db #0xa5	; 165
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x96	; 150
	.db #0xa2	; 162
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x8a	; 138
	.db #0x9c	; 156
	.db #0x9c	; 156
	.db #0x8a	; 138
	.db #0x9c	; 156
	.db #0x9c	; 156
	.db #0x92	; 146
	.db #0x97	; 151
	.db #0xa4	; 164
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xab	; 171
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xb0	; 176
_explosion:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0xda	; 218
	.db #0x24	; 36
	.db #0xae	; 174
	.db #0x18	; 24
	.db #0xda	; 218
	.db #0x18	; 24
	.db #0x7e	; 126
	.db #0x12	; 18
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x76	; 118	'v'
	.db #0x80	; 128
	.db #0x0d	; 13
	.db #0x9d	; 157
	.db #0x7c	; 124
	.db #0xb7	; 183
	.db #0x36	; 54	'6'
	.db #0x3a	; 58
	.db #0xc8	; 200
	.db #0x36	; 54	'6'
	.db #0x3c	; 60
	.db #0x9e	; 158
	.db #0x5c	; 92
	.db #0x5f	; 95
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x6a	; 106	'j'
	.db #0x9c	; 156
	.db #0x5f	; 95
	.db #0x1e	; 30
	.db #0xdf	; 223
	.db #0x3a	; 58
	.db #0x7a	; 122	'z'
	.db #0xa4	; 164
	.db #0x65	; 101	'e'
	.db #0xdf	; 223
	.db #0x7c	; 124
	.db #0x03	; 3
	.db #0xcc	; 204
_parallax_background_data:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x74	; 116	't'
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x81	; 129
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0xcc	; 204
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x2f	; 47
	.db #0x00	; 0
	.db #0xa7	; 167
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xe3	; 227
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xd8	; 216
	.db #0x18	; 24
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0xfa	; 250
	.db #0x06	; 6
	.db #0xe2	; 226
	.db #0x06	; 6
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x9f	; 159
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x1f	; 31
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x8f	; 143
	.db #0x8f	; 143
	.db #0xa5	; 165
	.db #0x6a	; 106	'j'
	.db #0x60	; 96
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfb	; 251
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xdf	; 223
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xdc	; 220
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0xf6	; 246
	.db #0x01	; 1
	.db #0xf9	; 249
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0xb1	; 177
	.db #0xc3	; 195
	.db #0x70	; 112	'p'
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x02	; 2
	.db #0x26	; 38
	.db #0x1a	; 26
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1a	; 26
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x18	; 24
	.db #0xc3	; 195
	.db #0x03	; 3
	.db #0xc8	; 200
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x0c	; 12
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x4f	; 79	'O'
	.db #0x60	; 96
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x3f	; 63
	.db #0x13	; 19
	.db #0x18	; 24
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x83	; 131
	.db #0x01	; 1
	.db #0xfa	; 250
	.db #0x01	; 1
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x1c	; 28
	.db #0x0c	; 12
	.db #0x90	; 144
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x86	; 134
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x61	; 97	'a'
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0xe8	; 232
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xe5	; 229
	.db #0x0c	; 12
	.db #0xc1	; 193
	.db #0x08	; 8
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf1	; 241
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xbe	; 190
	.db #0xc0	; 192
	.db #0x3e	; 62
	.db #0x40	; 64
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0xaf	; 175
	.db #0x30	; 48	'0'
	.db #0xaf	; 175
	.db #0x30	; 48	'0'
	.db #0xaf	; 175
	.db #0x30	; 48	'0'
	.db #0xaf	; 175
	.db #0x30	; 48	'0'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x8f	; 143
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0xfa	; 250
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x3f	; 63
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xdf	; 223
	.db #0x00	; 0
	.db #0xdf	; 223
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xe6	; 230
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfb	; 251
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0xaf	; 175
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0xdd	; 221
	.db #0x03	; 3
	.db #0xf1	; 241
	.db #0x03	; 3
	.db #0x1b	; 27
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x03	; 3
	.db #0x84	; 132
	.db #0x41	; 65	'A'
	.db #0xc4	; 196
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfb	; 251
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf9	; 249
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xb7	; 183
	.db #0x00	; 0
	.db #0xc7	; 199
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7d	; 125
	.db #0x03	; 3
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0xfb	; 251
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x98	; 152
	.db #0x64	; 100	'd'
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x13	; 19
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x47	; 71	'G'
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x3e	; 62
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfb	; 251
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xf0	; 240
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0xfa	; 250
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x9c	; 156
	.db #0xc6	; 198
	.db #0x42	; 66	'B'
	.db #0x48	; 72	'H'
	.db #0xd4	; 212
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x9a	; 154
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xd8	; 216
	.db #0x08	; 8
	.db #0x5b	; 91
	.db #0x0b	; 11
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x9c	; 156
	.db #0xc6	; 198
	.db #0x42	; 66	'B'
	.db #0x48	; 72	'H'
	.db #0xd4	; 212
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x5f	; 95
	.db #0x40	; 64
	.db #0x05	; 5
	.db #0x18	; 24
	.db #0x43	; 67	'C'
	.db #0x60	; 96
	.db #0x07	; 7
	.db #0x20	; 32
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x9b	; 155
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xf4	; 244
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xfd	; 253
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x60	; 96
	.db #0x70	; 112	'p'
	.db #0x77	; 119	'w'
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x1f	; 31
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x79	; 121	'y'
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x70	; 112	'p'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x0c	; 12
	.db #0xf9	; 249
	.db #0x05	; 5
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x16	; 22
	.db #0x1f	; 31
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0x01	; 1
	.db #0x3e	; 62
	.db #0x87	; 135
	.db #0x80	; 128
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x0e	; 14
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x77	; 119	'w'
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x5f	; 95
	.db #0xa0	; 160
	.db #0x40	; 64
	.db #0xbc	; 188
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x1c	; 28
	.db #0xe3	; 227
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xb0	; 176
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x38	; 56	'8'
	.db #0xc7	; 199
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xd0	; 208
	.db #0x3f	; 63
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x38	; 56	'8'
	.db #0xc7	; 199
	.db #0x21	; 33
	.db #0xca	; 202
	.db #0x05	; 5
	.db #0xfa	; 250
	.db #0x03	; 3
	.db #0xe8	; 232
	.db #0x0e	; 14
	.db #0xf1	; 241
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x73	; 115	's'
	.db #0x8c	; 140
	.db #0xf5	; 245
	.db #0x0e	; 14
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x0c	; 12
	.db #0xe3	; 227
	.db #0x1c	; 28
	.db #0x73	; 115	's'
	.db #0x8c	; 140
	.db #0x74	; 116	't'
	.db #0x82	; 130
	.db #0x2c	; 44
	.db #0xd3	; 211
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x88	; 136
	.db #0x08	; 8
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xf5	; 245
	.db #0x02	; 2
	.db #0x47	; 71	'G'
	.db #0xb8	; 184
	.db #0x01	; 1
	.db #0xfc	; 252
	.db #0x83	; 131
	.db #0x7c	; 124
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x32	; 50	'2'
	.db #0x0a	; 10
	.db #0x38	; 56	'8'
	.db #0xc6	; 198
	.db #0x0e	; 14
	.db #0xe1	; 225
	.db #0x1a	; 26
	.db #0xe5	; 229
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x09	; 9
	.db #0x0d	; 13
	.db #0x08	; 8
	.db #0x17	; 23
	.db #0x08	; 8
	.db #0x17	; 23
	.db #0x88	; 136
	.db #0x77	; 119	'w'
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x5f	; 95
	.db #0x60	; 96
	.db #0x10	; 16
	.db #0xaf	; 175
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x60	; 96
	.db #0x9f	; 159
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x08	; 8
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x08	; 8
	.db #0xf7	; 247
	.db #0x48	; 72	'H'
	.db #0xb7	; 183
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0x10	; 16
	.db #0xee	; 238
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x2f	; 47
	.db #0x50	; 80	'P'
	.db #0x20	; 32
	.db #0x5f	; 95
	.db #0x20	; 32
	.db #0x5f	; 95
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x20	; 32
	.db #0x5f	; 95
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x02	; 2
	.db #0xfd	; 253
	.db #0xde	; 222
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xe8	; 232
	.db #0x17	; 23
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x02	; 2
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfb	; 251
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x21	; 33
	.db #0xde	; 222
	.db #0x21	; 33
	.db #0xde	; 222
	.db #0x04	; 4
	.db #0xfb	; 251
	.db #0x94	; 148
	.db #0x6b	; 107	'k'
	.db #0x60	; 96
	.db #0x9f	; 159
	.db #0x60	; 96
	.db #0x9f	; 159
	.db #0x20	; 32
	.db #0xdf	; 223
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x48	; 72	'H'
	.db #0xb7	; 183
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x30	; 48	'0'
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x05	; 5
	.db #0xfa	; 250
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x60	; 96
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x02	; 2
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x1e	; 30
	.db #0xe1	; 225
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x05	; 5
	.db #0xfa	; 250
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x34	; 52	'4'
	.db #0xcb	; 203
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x20	; 32
	.db #0xdf	; 223
	.db #0x20	; 32
	.db #0xdf	; 223
	.db #0x20	; 32
	.db #0xdf	; 223
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x1c	; 28
	.db #0xdc	; 220
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x17	; 23
	.db #0x1f	; 31
	.db #0x9f	; 159
	.db #0xa0	; 160
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0xcf	; 207
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xf7	; 247
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x0d	; 13
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x60	; 96
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x0f	; 15
	.db #0x18	; 24
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x07	; 7
	.db #0x24	; 36
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xa0	; 160
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xf0	; 240
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0x28	; 40
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x12	; 18
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x58	; 88	'X'
	.db #0x3f	; 63
	.db #0x48	; 72	'H'
	.db #0x3f	; 63
	.db #0x4f	; 79	'O'
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x1b	; 27
	.db #0x1f	; 31
	.db #0x47	; 71	'G'
	.db #0x3f	; 63
	.db #0xe6	; 230
	.db #0x7f	; 127
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x70	; 112	'p'
	.db #0xe0	; 224
	.db #0x70	; 112	'p'
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0x78	; 120	'x'
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x16	; 22
	.db #0x0f	; 15
	.db #0x12	; 18
	.db #0x0f	; 15
	.db #0x13	; 19
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x11	; 17
	.db #0x0f	; 15
	.db #0x39	; 57	'9'
	.db #0x1f	; 31
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0x1c	; 28
	.db #0xf8	; 248
	.db #0x1c	; 28
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0xd4	; 212
	.db #0xf8	; 248
	.db #0x9e	; 158
	.db #0xfc	; 252
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x2c	; 44
	.db #0x1f	; 31
	.db #0x24	; 36
	.db #0x1f	; 31
	.db #0x27	; 39
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x23	; 35
	.db #0x1f	; 31
	.db #0x73	; 115	's'
	.db #0x3f	; 63
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0x38	; 56	'8'
	.db #0xf0	; 240
	.db #0x38	; 56	'8'
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xa8	; 168
	.db #0xf0	; 240
	.db #0x3c	; 60
	.db #0xf8	; 248
	.db #0x84	; 132
	.db #0xff	; 255
	.db #0xfa	; 250
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x3f	; 63
	.db #0x3e	; 62
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0xfe	; 254
	.db #0xbe	; 190
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x42	; 66	'B'
	.db #0x7f	; 127
	.db #0x7d	; 125
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x3c	; 60
	.db #0xfc	; 252
	.db #0x7c	; 124
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
_parallax_background_map:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x2f	; 47
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x3a	; 58
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3d	; 61
	.db #0x3e	; 62
	.db #0x3f	; 63
	.db #0x3e	; 62
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4a	; 74	'J'
	.db #0x4b	; 75	'K'
	.db #0x4c	; 76	'L'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x59	; 89	'Y'
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5b	; 91
	.db #0x5c	; 92
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5d	; 93
	.db #0x5e	; 94
	.db #0x5f	; 95
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x62	; 98	'b'
	.db #0x63	; 99	'c'
	.db #0x64	; 100	'd'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x67	; 103	'g'
	.db #0x68	; 104	'h'
	.db #0x69	; 105	'i'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x6a	; 106	'j'
	.db #0x6b	; 107	'k'
	.db #0x6c	; 108	'l'
	.db #0x6d	; 109	'm'
	.db #0x2b	; 43
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x73	; 115	's'
	.db #0x74	; 116	't'
	.db #0x75	; 117	'u'
	.db #0x76	; 118	'v'
	.db #0x77	; 119	'w'
	.db #0x78	; 120	'x'
	.db #0x79	; 121	'y'
	.db #0x7a	; 122	'z'
	.db #0x7b	; 123
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7d	; 125
	.db #0x7e	; 126
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x82	; 130
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x85	; 133
	.db #0x86	; 134
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x8a	; 138
	.db #0x8b	; 139
	.db #0x8c	; 140
	.db #0x8d	; 141
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x8e	; 142
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x91	; 145
	.db #0x92	; 146
	.db #0x93	; 147
	.db #0x94	; 148
	.db #0x95	; 149
	.db #0x96	; 150
	.db #0x97	; 151
	.db #0x80	; 128
	.db #0x98	; 152
	.db #0x99	; 153
	.db #0x9a	; 154
	.db #0x9b	; 155
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x9e	; 158
	.db #0x9f	; 159
	.db #0xa0	; 160
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa2	; 162
	.db #0xa3	; 163
	.db #0xa4	; 164
	.db #0xa5	; 165
	.db #0xa5	; 165
	.db #0xa6	; 166
	.db #0x69	; 105	'i'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa7	; 167
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa7	; 167
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa7	; 167
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa7	; 167
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa7	; 167
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa7	; 167
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa9	; 169
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xab	; 171
	.db #0xac	; 172
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0xae	; 174
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0xae	; 174
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0xae	; 174
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0xae	; 174
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0xae	; 174
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0xae	; 174
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xaf	; 175
	.db #0xb0	; 176
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb1	; 177
	.db #0xb2	; 178
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb3	; 179
	.db #0xb4	; 180
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb3	; 179
	.db #0xb4	; 180
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb3	; 179
	.db #0xb4	; 180
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb3	; 179
	.db #0xb4	; 180
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb3	; 179
	.db #0xb4	; 180
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb3	; 179
	.db #0xb4	; 180
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb5	; 181
	.db #0xb6	; 182
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xbb	; 187
	.db #0xbc	; 188
	.db #0x00	; 0
	.db #0x00	; 0
_splashcreen_data:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x98	; 152
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0xdf	; 223
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0xe3	; 227
	.db #0x04	; 4
	.db #0xe3	; 227
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfb	; 251
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x20	; 32
	.db #0xd8	; 216
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x08	; 8
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xf2	; 242
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x60	; 96
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x75	; 117	'u'
	.db #0x8a	; 138
	.db #0xfb	; 251
	.db #0x04	; 4
	.db #0x71	; 113	'q'
	.db #0x8a	; 138
	.db #0xe3	; 227
	.db #0x14	; 20
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x05	; 5
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xd0	; 208
	.db #0x2f	; 47
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xfd	; 253
	.db #0x02	; 2
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x70	; 112	'p'
	.db #0x8f	; 143
	.db #0x38	; 56	'8'
	.db #0xc5	; 197
	.db #0x1d	; 29
	.db #0xe2	; 226
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x82	; 130
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x17	; 23
	.db #0xe8	; 232
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x3b	; 59
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb8	; 184
	.db #0x40	; 64
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xc7	; 199
	.db #0x38	; 56	'8'
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0x75	; 117	'u'
	.db #0x8a	; 138
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x17	; 23
	.db #0x28	; 40
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0xeb	; 235
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x51	; 81	'Q'
	.db #0xae	; 174
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x1c	; 28
	.db #0xe3	; 227
	.db #0xbe	; 190
	.db #0x41	; 65	'A'
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x47	; 71	'G'
	.db #0xb8	; 184
	.db #0x07	; 7
	.db #0xd8	; 216
	.db #0x05	; 5
	.db #0xfa	; 250
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xe8	; 232
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0x5f	; 95
	.db #0x7a	; 122	'z'
	.db #0x00	; 0
	.db #0x79	; 121	'y'
	.db #0x00	; 0
	.db #0x7b	; 123
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x0e	; 14
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x84	; 132
	.db #0x78	; 120	'x'
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0xe6	; 230
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xfa	; 250
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xd0	; 208
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0xbe	; 190
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xdf	; 223
	.db #0x20	; 32
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x3d	; 61
	.db #0xc0	; 192
	.db #0xbd	; 189
	.db #0x42	; 66	'B'
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0xa1	; 161
	.db #0x00	; 0
	.db #0xcd	; 205
	.db #0x00	; 0
	.db #0xf3	; 243
	.db #0x08	; 8
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x00	; 0
	.db #0xab	; 171
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x03	; 3
	.db #0x79	; 121	'y'
	.db #0x82	; 130
	.db #0xf5	; 245
	.db #0x02	; 2
	.db #0xdd	; 221
	.db #0x22	; 34
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xdf	; 223
	.db #0x00	; 0
	.db #0xfb	; 251
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xdf	; 223
	.db #0x20	; 32
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfb	; 251
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xac	; 172
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf4	; 244
	.db #0x00	; 0
	.db #0xfb	; 251
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0xd0	; 208
	.db #0x00	; 0
	.db #0xb8	; 184
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0xe6	; 230
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xfa	; 250
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xd0	; 208
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf5	; 245
	.db #0x02	; 2
	.db #0xfd	; 253
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0x17	; 23
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0xf5	; 245
	.db #0x02	; 2
	.db #0xfd	; 253
	.db #0x02	; 2
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xe8	; 232
	.db #0x10	; 16
	.db #0xda	; 218
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0xfb	; 251
	.db #0x04	; 4
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x1b	; 27
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x9b	; 155
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xd4	; 212
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0xdc	; 220
	.db #0xb8	; 184
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0x17	; 23
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xe8	; 232
	.db #0x10	; 16
	.db #0xda	; 218
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0xfb	; 251
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x28	; 40
	.db #0xd0	; 208
	.db #0x2c	; 44
	.db #0xd0	; 208
	.db #0x2e	; 46
	.db #0xd0	; 208
	.db #0x2f	; 47
	.db #0xd0	; 208
	.db #0x2f	; 47
	.db #0xd0	; 208
	.db #0x2f	; 47
	.db #0xd0	; 208
	.db #0x6f	; 111	'o'
	.db #0x90	; 144
	.db #0xdf	; 223
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x67	; 103	'g'
	.db #0x1f	; 31
	.db #0x01	; 1
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xdf	; 223
	.db #0x20	; 32
	.db #0x6f	; 111	'o'
	.db #0x90	; 144
	.db #0x37	; 55	'7'
	.db #0xc8	; 200
	.db #0x1b	; 27
	.db #0xe4	; 228
	.db #0x0d	; 13
	.db #0xf2	; 242
	.db #0x06	; 6
	.db #0xf9	; 249
	.db #0xc2	; 194
	.db #0xfd	; 253
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xc7	; 199
	.db #0x38	; 56	'8'
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xa7	; 167
	.db #0x1f	; 31
	.db #0x67	; 103	'g'
	.db #0x1f	; 31
	.db #0xa7	; 167
	.db #0x1f	; 31
	.db #0x67	; 103	'g'
	.db #0x1f	; 31
	.db #0xa7	; 167
	.db #0x1f	; 31
	.db #0x67	; 103	'g'
	.db #0x1f	; 31
	.db #0xa7	; 167
	.db #0x1f	; 31
	.db #0x67	; 103	'g'
	.db #0x1f	; 31
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xe2	; 226
	.db #0xfd	; 253
	.db #0xf2	; 242
	.db #0xfd	; 253
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0xe2	; 226
	.db #0xe3	; 227
	.db #0xc3	; 195
	.db #0xe3	; 227
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x50	; 80	'P'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x02	; 2
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xd0	; 208
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x7a	; 122	'z'
	.db #0x78	; 120	'x'
	.db #0x7c	; 124
	.db #0x7a	; 122	'z'
	.db #0x3e	; 62
	.db #0x30	; 48	'0'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xc3	; 195
	.db #0xa5	; 165
	.db #0xc3	; 195
	.db #0xa5	; 165
	.db #0xc3	; 195
	.db #0xbd	; 189
	.db #0xc3	; 195
	.db #0x81	; 129
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x5b	; 91
	.db #0x39	; 57	'9'
	.db #0x8c	; 140
	.db #0x42	; 66	'B'
	.db #0x33	; 51	'3'
	.db #0x88	; 136
	.db #0x4d	; 77	'M'
	.db #0x22	; 34
	.db #0xd6	; 214
	.db #0x49	; 73	'I'
	.db #0x67	; 103	'g'
	.db #0x12	; 18
	.db #0xa9	; 169
	.db #0x54	; 84	'T'
	.db #0x4d	; 77	'M'
	.db #0x22	; 34
	.db #0x5b	; 91
	.db #0x39	; 57	'9'
	.db #0x8c	; 140
	.db #0x42	; 66	'B'
	.db #0x33	; 51	'3'
	.db #0x88	; 136
	.db #0x4d	; 77	'M'
	.db #0x22	; 34
	.db #0xde	; 222
	.db #0x49	; 73	'I'
	.db #0x67	; 103	'g'
	.db #0x12	; 18
	.db #0xa9	; 169
	.db #0x54	; 84	'T'
	.db #0x4d	; 77	'M'
	.db #0x22	; 34
_splashcreen_map:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x3a	; 58
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3d	; 61
	.db #0x3e	; 62
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x41	; 65	'A'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4a	; 74	'J'
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.db #0x4d	; 77	'M'
	.db #0x4d	; 77	'M'
	.db #0x4d	; 77	'M'
	.db #0x4d	; 77	'M'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x99	; 153
	.db #0x9b	; 155
	.db #0x8e	; 142
	.db #0x9c	; 156
	.db #0x9c	; 156
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x59	; 89	'Y'
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0x8a	; 138
	.db #0x9b	; 155
	.db #0x9d	; 157
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5b	; 91
	.db #0x5c	; 92
	.db #0x5d	; 93
	.db #0x5e	; 94
	.db #0x5f	; 95
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x62	; 98	'b'
	.db #0x63	; 99	'c'
	.db #0x64	; 100	'd'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x69	; 105	'i'
	.db #0x6a	; 106	'j'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x6a	; 106	'j'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x6a	; 106	'j'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x6a	; 106	'j'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x6a	; 106	'j'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x6a	; 106	'j'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x6a	; 106	'j'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x6a	; 106	'j'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
_order_cnt:
	.db #0x06	; 6
_P0:
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1a	; 26
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1d	; 29
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1a	; 26
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1d	; 29
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P1:
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P4:
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1d	; 29
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1d	; 29
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1a	; 26
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_P8:
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1d	; 29
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1d	; 29
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1a	; 26
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x00	; 0
_order1:
	.dw _P0
	.dw _P4
	.dw _P8
_order2:
	.dw _P1
	.dw _P1
	.dw _P1
_order3:
	.dw _P1
	.dw _P1
	.dw _P1
_order4:
	.dw _P1
	.dw _P1
	.dw _P1
_duty_instruments:
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0xc0	; 192
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0xf1	; 241
	.dw #0x0000
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0xf1	; 241
	.dw #0x0000
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0xf1	; 241
	.dw #0x0000
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0xc0	; 192
	.db #0xf1	; 241
	.dw #0x0000
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x80	; 128
_wave_instruments:
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x01	; 1
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x03	; 3
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x04	; 4
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x05	; 5
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x06	; 6
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x07	; 7
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x08	; 8
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x09	; 9
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x0a	; 10
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x0b	; 11
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x0c	; 12
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x0d	; 13
	.dw #0x0000
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x0e	; 14
	.dw #0x0000
	.db #0x80	; 128
_noise_instruments:
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_waves:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x23	; 35
	.db #0x34	; 52	'4'
	.db #0x45	; 69	'E'
	.db #0x56	; 86	'V'
	.db #0x67	; 103	'g'
	.db #0x78	; 120	'x'
	.db #0x89	; 137
	.db #0x9a	; 154
	.db #0xab	; 171
	.db #0xbc	; 188
	.db #0xcd	; 205
	.db #0xde	; 222
	.db #0xef	; 239
	.db #0xfe	; 254
	.db #0xdc	; 220
	.db #0xba	; 186
	.db #0x98	; 152
	.db #0x76	; 118	'v'
	.db #0x54	; 84	'T'
	.db #0x32	; 50	'2'
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x34	; 52	'4'
	.db #0x56	; 86	'V'
	.db #0x78	; 120	'x'
	.db #0x9a	; 154
	.db #0xbc	; 188
	.db #0xde	; 222
	.db #0xff	; 255
	.db #0x7a	; 122	'z'
	.db #0xcd	; 205
	.db #0xdb	; 219
	.db #0x75	; 117	'u'
	.db #0x21	; 33
	.db #0x13	; 19
	.db #0x68	; 104	'h'
	.db #0xbd	; 189
	.db #0xdc	; 220
	.db #0x97	; 151
	.db #0x41	; 65	'A'
	.db #0x01	; 1
	.db #0x47	; 71	'G'
	.db #0x9c	; 156
	.db #0xdd	; 221
	.db #0xb8	; 184
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0xfa	; 250
	.db #0xf8	; 248
	.db #0xf6	; 246
	.db #0xf4	; 244
	.db #0xf2	; 242
	.db #0xf0	; 240
	.db #0xf2	; 242
	.db #0xf4	; 244
	.db #0xf6	; 246
	.db #0xf8	; 248
	.db #0xfa	; 250
	.db #0xfc	; 252
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xdd	; 221
	.db #0xcc	; 204
	.db #0xbb	; 187
	.db #0xaa	; 170
	.db #0x99	; 153
	.db #0x88	; 136
	.db #0x77	; 119	'w'
	.db #0x8a	; 138
	.db #0xbd	; 189
	.db #0xf1	; 241
	.db #0x24	; 36
	.db #0x57	; 87	'W'
	.db #0x8a	; 138
	.db #0xbd	; 189
	.db #0xee	; 238
	.db #0x84	; 132
	.db #0x11	; 17
	.db #0x61	; 97	'a'
	.db #0xed	; 237
	.db #0x57	; 87	'W'
	.db #0x47	; 71	'G'
	.db #0x5a	; 90	'Z'
	.db #0xad	; 173
	.db #0xce	; 206
	.db #0xa3	; 163
	.db #0x17	; 23
	.db #0x79	; 121	'y'
	.db #0xdd	; 221
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x47	; 71	'G'
	.db #0x73	; 115	's'
	.db #0xba	; 186
	.db #0x21	; 33
	.db #0xd3	; 211
	.db #0x7d	; 125
	.db #0xaa	; 170
	.db #0x49	; 73	'I'
	.db #0x98	; 152
	.db #0x23	; 35
	.db #0x4b	; 75	'K'
	.db #0xc4	; 196
	.db #0x13	; 19
	.db #0x7a	; 122	'z'
	.db #0x1b	; 27
	.db #0x2a	; 42
	.db #0xd8	; 216
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x5d	; 93
	.db #0x70	; 112	'p'
	.db #0x7c	; 124
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0x0a	; 10
	.db #0x96	; 150
	.db #0xc9	; 201
	.db #0x90	; 144
	.db #0xe5	; 229
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x6e	; 110	'n'
	.db #0x48	; 72	'H'
	.db #0xc9	; 201
	.db #0xdb	; 219
	.db #0x79	; 121	'y'
	.db #0x8a	; 138
	.db #0x4c	; 76	'L'
	.db #0x7b	; 123
	.db #0x1e	; 30
	.db #0x9c	; 156
	.db #0x21	; 33
	.db #0x1c	; 28
	.db #0x8e	; 142
	.db #0x84	; 132
	.db #0x01	; 1
	.db #0x93	; 147
	.db #0xe8	; 232
	.db #0xee	; 238
	.db #0x66	; 102	'f'
	.db #0xe4	; 228
	.db #0xa0	; 160
	.db #0xee	; 238
	.db #0x36	; 54	'6'
	.db #0x39	; 57	'9'
	.db #0x95	; 149
	.db #0xd1	; 209
	.db #0x19	; 25
	.db #0x2d	; 45
	.db #0x89	; 137
	.db #0x67	; 103	'g'
	.db #0x5d	; 93
	.db #0x84	; 132
	.db #0x53	; 83	'S'
	.db #0x62	; 98	'b'
	.db #0x71	; 113	'q'
	.db #0xae	; 174
	.db #0xd0	; 208
	.db #0xb7	; 183
	.db #0xed	; 237
	.db #0x45	; 69	'E'
	.db #0x3b	; 59
	.db #0x86	; 134
	.db #0x9c	; 156
	.db #0x91	; 145
	.db #0x0e	; 14
	.db #0xa1	; 161
	.db #0x45	; 69	'E'
	.db #0x5c	; 92
	.db #0x66	; 102	'f'
	.db #0x39	; 57	'9'
_blankmap:
	.db #0x00	;  0
_main_menu_song:
	.db #0x07	; 7
	.dw _order_cnt
	.dw _order1
	.dw _order2
	.dw _order3
	.dw _order4
	.dw _duty_instruments
	.dw _wave_instruments
	.dw _noise_instruments
	.dw #0x0000
	.dw _waves
;main.c:131: void SplashScreen()
;	---------------------------------
; Function SplashScreen
; ---------------------------------
_SplashScreen::
	add	sp, #-4
;main.c:133: set_bkg_data(0, 107, splashcreen_data);
	ld	de, #_splashcreen_data
	push	de
	ld	hl, #0x6b00
	push	hl
	call	_set_bkg_data
	add	sp, #4
;main.c:134: set_bkg_tiles(0, 0, 32, 18, splashcreen_map);
	ld	de, #_splashcreen_map
	push	de
	ld	hl, #0x1220
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:135: set_win_data(128, 49, characters);
	ld	de, #_characters
	push	de
	ld	hl, #0x3180
	push	hl
	call	_set_win_data
	add	sp, #4
;main.c:136: set_sprite_data(0, 1, bird);
	ld	de, #_bird
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x00
	ld	hl, #(_shadow_OAM + 6)
	ld	(hl), #0x00
	ld	hl, #(_shadow_OAM + 10)
	ld	(hl), #0x00
;main.c:141: uint8_t bird_loc_x = 100;
	ldhl	sp,	#0
;main.c:142: uint8_t bird_one_loc_y = 50;
	ld	a, #0x64
	ld	(hl+), a
;main.c:143: uint8_t bird_two_loc_y = 56;
	ld	a, #0x32
	ld	(hl+), a
;main.c:144: uint8_t bird_three_loc_y = 62;
	ld	a, #0x38
	ld	(hl+), a
	ld	(hl), #0x3e
;main.c:146: NR52_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
;main.c:147: NR51_REG = 0xFF;
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
;main.c:148: NR50_REG = 0x77;
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
;main.c:151: STAT_REG = 0x45; // enable LYC=LY interrupt so that we can set a specific line it will fire at
	ld	a, #0x45
	ldh	(_STAT_REG + 0), a
;main.c:152: LYC_REG = 0x00;
	ld	a, #0x00
	ldh	(_LYC_REG + 0), a
;c:/gbdk/include/gb/gb.h:743: __asm__("di");
	di
;main.c:155: add_LCD(interruptLCD);
	ld	de, #_interruptLCD
	push	de
	call	_add_LCD
	inc	sp
	inc	sp
;c:/gbdk/include/gb/gb.h:727: __asm__("ei");
	ei
;main.c:158: set_interrupts(VBL_IFLAG | LCD_IFLAG);
	ld	a, #0x03
	push	af
	inc	sp
	call	_set_interrupts
	inc	sp
;main.c:160: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;main.c:161: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;main.c:162: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;main.c:166: for (i = 0; i < 21; i++)
	ld	hl, #_i
	ld	(hl), #0x00
00124$:
;main.c:168: if(i % 3 == 0) backgroundoffset1x += 1;
	ld	hl, #_i
	ld	e, (hl)
	ld	d, #0x00
	ld	bc, #0x0003
	call	__modsint
	ld	e, c
	ld	a, b
	or	a, e
	jr	NZ, 00102$
	ld	hl, #_backgroundoffset1x
	inc	(hl)
	ld	a, (hl)
00102$:
;main.c:169: backgroundoffset2x += 0;
;main.c:170: backgroundoffset3x += 3;
	ld	hl, #_backgroundoffset3x
	ld	a, (hl)
	add	a, #0x03
	ld	(hl), a
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ldhl	sp,	#1
	ld	a, (hl-)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;main.c:173: move_sprite(1, bird_loc_x + 105, bird_two_loc_y);
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, (hl+)
	inc	hl
	ld	c, a
	add	a, #0x69
	ld	b, a
	ld	de, #_shadow_OAM+4
;main.c:174: move_sprite(2, bird_loc_x - 95, bird_three_loc_y);
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
	ld	a, c
	add	a, #0xa1
	ld	b, a
	ld	de, #_shadow_OAM+8
	ld	a, (hl)
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;main.c:176: bird_loc_x -= 2;
	ld	a, c
	add	a, #0xfe
	ldhl	sp,	#0
	ld	(hl), a
;main.c:177: if(bird_loc_x == 0) bird_one_loc_y = 50 + i;
	ld	hl, #_i
	ld	c, (hl)
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	NZ, 00109$
	inc	hl
	ld	a, c
	add	a, #0x32
	ld	(hl), a
	jr	00110$
00109$:
;main.c:178: else if(bird_loc_x + 105 == 0) bird_two_loc_y = 51 + i;
	ldhl	sp,	#0
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #0x0069
	add	hl, de
	ld	a, h
	or	a, l
	jr	NZ, 00106$
	ld	a, c
	add	a, #0x33
	ldhl	sp,	#2
	ld	(hl), a
	jr	00110$
00106$:
;main.c:179: else if(bird_loc_x - 95 == 0) bird_three_loc_y = 52 + i;
	ld	a, e
	add	a, #0xa1
	ld	b, a
	ld	a, d
	adc	a, #0xff
	or	a, b
	jr	NZ, 00110$
	ld	a, c
	add	a, #0x34
	ldhl	sp,	#3
	ld	(hl), a
00110$:
;main.c:183: performantdelay(5);
	ld	a, #0x05
	call	_performantdelay
;main.c:185: if(joypad() & J_START) break;
	call	_joypad
	rlca
	jr	C, 00115$
;main.c:186: if(i == 20) i = 0;
	ld	a, (#_i)
	sub	a, #0x14
	jr	NZ, 00125$
	ld	hl, #_i
	ld	(hl), #0x00
00125$:
;main.c:166: for (i = 0; i < 21; i++)
	ld	hl, #_i
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x15
	jp	C, 00124$
00115$:
;main.c:189: backgroundoffset1x = 0;
	ld	hl, #_backgroundoffset1x
	ld	(hl), #0x00
;main.c:190: backgroundoffset2x = 0;
	ld	hl, #_backgroundoffset2x
	ld	(hl), #0x00
;main.c:191: backgroundoffset3x = 0;
	ld	hl, #_backgroundoffset3x
	ld	(hl), #0x00
;main.c:192: }
	add	sp, #4
	ret
;main.c:194: void SetUp()
;	---------------------------------
; Function SetUp
; ---------------------------------
_SetUp::
;main.c:196: player.location[0] = 80;
	ld	hl, #_player
	ld	(hl), #0x50
;main.c:197: player.location[1] = 80;
	ld	hl, #(_player + 1)
	ld	(hl), #0x50
;main.c:198: mid_air_frames = 200;
	ld	hl, #_mid_air_frames
	ld	(hl), #0xc8
;main.c:199: player_animation_state = 2;
	ld	hl, #_player_animation_state
	ld	(hl), #0x02
;main.c:200: player_shooting_animation_state = 0;
	ld	hl, #_player_shooting_animation_state
	ld	(hl), #0x00
;main.c:201: explosion_sprite_index = 21;
	ld	hl, #_explosion_sprite_index
	ld	(hl), #0x15
;main.c:202: bullet.location[0] = 200;
	ld	hl, #(_bullet + 4)
	ld	(hl), #0xc8
;main.c:203: bullet.location[1] = 200;
	ld	hl, #(_bullet + 5)
	ld	(hl), #0xc8
;main.c:204: bullet.shoot_cooldown = 500;
	ld	hl, #_bullet
	ld	a, #0xf4
	ld	(hl+), a
	ld	(hl), #0x01
;main.c:205: bullet.frames_since_last_shoot = 1000;
	ld	hl, #(_bullet + 2)
	ld	a, #0xe8
	ld	(hl+), a
	ld	(hl), #0x03
;main.c:206: player_speed = 15;
	ld	hl, #_player_speed
	ld	(hl), #0x0f
;main.c:207: JUMP_FORCE = 25;
	ld	hl, #_JUMP_FORCE
	ld	(hl), #0x19
;main.c:208: bullet.shot_right = TRUE;
	ld	hl, #(_bullet + 6)
	ld	(hl), #0x01
;main.c:209: map_index = 0;
	ld	hl, #_map_index
	ld	(hl), #0x00
;main.c:210: player_armed = FALSE;
	ld	hl, #_player_armed
	ld	(hl), #0x00
;main.c:211: ducking = FALSE;
	ld	hl, #_ducking
	ld	(hl), #0x00
;main.c:212: player.dead = FALSE;
	ld	hl, #(_player + 7)
	ld	(hl), #0x00
;main.c:214: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;main.c:215: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;main.c:216: set_sprite_data(0, 20, TokoUnarmed);
	ld	de, #_TokoUnarmed
	push	de
	ld	hl, #0x1400
	push	hl
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 10)
	ld	(hl), #0x13
;main.c:218: set_bkg_data(0, 55, map_tiles);
	ld	de, #_map_tiles
	push	de
	ld	hl, #0x3700
	push	hl
	call	_set_bkg_data
	add	sp, #4
;main.c:219: set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
	ld	bc, #_maps+0
	ld	hl, #_map_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	push	hl
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:220: set_win_data(128, 49, characters);
	ld	de, #_characters
	push	de
	ld	hl, #0x3180
	push	hl
	call	_set_win_data
	add	sp, #4
;main.c:221: set_sprite_data(123, 4, explosion);
	ld	de, #_explosion
	push	de
	ld	hl, #0x47b
	push	hl
	call	_set_sprite_data
	add	sp, #4
;main.c:223: move_sprite(0, player.location[0], player.location[1]);
	ld	hl, #(_player + 1)
	ld	b, (hl)
	ld	hl, #_player
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;main.c:224: move_sprite(1, player.location[0], player.location[1] + 8);
	ld	a, (#(_player + 1) + 0)
	add	a, #0x08
	ld	b, a
	ld	hl, #_player
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 4)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	(hl), b
	inc	hl
	ld	(hl), c
;c:/gbdk/include/gb/gb.h:743: __asm__("di");
	di
;main.c:227: add_LCD(interruptLCD);
	ld	de, #_interruptLCD
	push	de
	call	_add_LCD
	inc	sp
	inc	sp
;c:/gbdk/include/gb/gb.h:727: __asm__("ei");
	ei
;main.c:229: set_interrupts(VBL_IFLAG | LCD_IFLAG);
	ld	a, #0x03
	push	af
	inc	sp
	call	_set_interrupts
	inc	sp
;main.c:230: }
	ret
;main.c:232: void GameLoop()
;	---------------------------------
; Function GameLoop
; ---------------------------------
_GameLoop::
;main.c:234: for (ii = 0; ii < 10001; ii++)
	xor	a, a
	ld	hl, #_ii
	ld	(hl+), a
	ld	(hl), a
00106$:
;main.c:236: Update();
	call	_Update
;main.c:237: if(ii % player_speed == 0) Movement();
	ld	hl, #_player_speed
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #_ii
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	__moduint
	ld	a, b
	or	a, c
	jr	NZ, 00102$
	call	_Movement
00102$:
;main.c:238: MapController();
	call	_MapController
;main.c:239: JumpFall();
	call	_JumpFall
;main.c:240: Shoot();
	call	_Shoot
;main.c:241: Animator();
	call	_Animator
;main.c:242: DeathAnimation();
	call	_DeathAnimation
;main.c:243: if(ii == 10000) { ii = 0; }
	ld	hl, #_ii
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, c
	sub	a, #0x10
	jr	NZ, 00104$
	ld	a, b
	sub	a, #0x27
	jr	NZ, 00104$
	dec	hl
	xor	a, a
	ld	(hl+), a
	ld	(hl), a
00104$:
;main.c:244: prev_joypad_state = joypad_state;
	ld	a, (#_joypad_state)
	ld	(#_prev_joypad_state),a
;main.c:234: for (ii = 0; ii < 10001; ii++)
	ld	hl, #_ii
	inc	(hl)
	jr	NZ, 00127$
	inc	hl
	inc	(hl)
00127$:
	ld	hl, #_ii
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, c
	sub	a, #0x11
	ld	a, b
	sbc	a, #0x27
	jr	C, 00106$
;main.c:246: }
	ret
;main.c:248: void MapController()
;	---------------------------------
; Function MapController
; ---------------------------------
_MapController::
;main.c:250: if(map_index == 0){ // kings room
	ld	hl, #_map_index
	ld	a, (hl)
	or	a, a
;main.c:251: MapZero();
	jp	Z,_MapZero
;main.c:253: else if(map_index == 1) { // kings room entrence
	ld	hl, #_map_index
	ld	a, (hl)
	dec	a
	jp	Z,_MapOne
;main.c:254: MapOne();
;main.c:256: else if(map_index == 2){ // gun room
	ld	hl, #_map_index
	ld	a, (hl)
	sub	a, #0x02
	jp	Z,_MapTwo
;main.c:257: MapTwo();
;main.c:259: else if(map_index == 3){ // level one with killer
	ld	hl, #_map_index
	ld	a, (hl)
	sub	a, #0x03
	jp	Z,_MapThree
;main.c:260: MapThree();
;main.c:262: else if(map_index == 4){ // level two with fall
	ld	hl, #_map_index
	ld	a, (hl)
	sub	a, #0x04
	jp	Z,_MapFour
;main.c:263: MapFour();
;main.c:265: else if(map_index == 5){ // hidden room one
	ld	hl, #_map_index
	ld	a, (hl)
	sub	a, #0x05
	jp	Z,_MapFive
;main.c:266: MapFive();
;main.c:268: else if(map_index == 6){ // pit
	ld	hl, #_map_index
	ld	a, (hl)
	sub	a, #0x06
	jp	Z,_MapSix
;main.c:269: MapSix();
;main.c:271: else if(map_index == 7){ // mystery entrence
	ld	hl, #_map_index
	ld	a, (hl)
	sub	a, #0x07
	jp	Z,_MapSeven
;main.c:272: MapSeven();
;main.c:274: else if(map_index == 8){ // key room
	ld	hl, #_map_index
	ld	a, (hl)
	sub	a, #0x08
	jp	Z,_MapEight
;main.c:275: MapEight();
;main.c:277: else if(map_index == 9){ // room after door and before fly
	ld	hl, #_map_index
	ld	a, (hl)
	sub	a, #0x09
	jp	Z,_MapNine
;main.c:278: MapNine();
;main.c:280: else if(map_index == 10){ // hidden room two
	ld	hl, #_map_index
	ld	a, (hl)
	sub	a, #0x0a
	jp	Z,_MapTen
;main.c:281: MapTen();
;main.c:283: else if(map_index == 11){ // button room
	ld	hl, #_map_index
	ld	a, (hl)
	sub	a, #0x0b
	jp	Z,_MapEleven
;main.c:284: MapEleven();
;main.c:286: else if(map_index == 12){ // bat boss room
	ld	hl, #_map_index
	ld	a, (hl)
	sub	a, #0x0c
	jp	Z,_MapTwelve
;main.c:287: MapTwelve();
;main.c:289: }
	ret
;main.c:291: void ResetGameBoy() {
;	---------------------------------
; Function ResetGameBoy
; ---------------------------------
_ResetGameBoy::
;main.c:292: while(1) {
00104$:
;main.c:293: if (joypad() & J_START) break;
	call	_joypad
	rlca
	jr	NC, 00104$
;main.c:296: if(gold_two_took){
	ld	a, (#_gold_two_took)
	or	a, a
	jr	Z, 00107$
;main.c:297: MapTenStart(down);
	ld	a, #0x03
	call	_MapTenStart
00107$:
;main.c:299: if(gold_one_took){
	ld	hl, #_gold_one_took
	ld	a, (hl)
	or	a, a
	jp	Z,_reset
;main.c:300: MapFiveStart(down);
	ld	a, #0x03
;main.c:303: reset();
;main.c:305: }
	jp	_MapFiveStart
;main.c:307: void Movement(){
;	---------------------------------
; Function Movement
; ---------------------------------
_Movement::
;main.c:308: if(joypad_state & J_LEFT && PlayerCanMove(left)){
	ld	a, (#_joypad_state)
	bit	1, a
	jr	Z, 00105$
	xor	a, a
	call	_PlayerCanMove
	or	a, a
	jr	Z, 00105$
;main.c:309: player.location[0]--;
	ld	bc, #_player+0
	ld	a, (bc)
	dec	a
	ld	(bc), a
;main.c:310: moving_right = FALSE;
	ld	hl, #_moving_right
	ld	(hl), #0x00
	ret
00105$:
;main.c:312: else if(joypad_state & J_RIGHT && PlayerCanMove(right)){
	ld	a, (#_joypad_state)
	rrca
	ret	NC
	ld	a, #0x01
	call	_PlayerCanMove
	or	a, a
	ret	Z
;main.c:313: player.location[0]++;
	ld	bc, #_player+0
	ld	a, (bc)
	inc	a
	ld	(bc), a
;main.c:314: moving_right = TRUE;
	ld	hl, #_moving_right
	ld	(hl), #0x01
;main.c:316: }
	ret
;main.c:318: UBYTE CheckPixlexCollision(uint8_t x, uint8_t y)
;	---------------------------------
; Function CheckPixlexCollision
; ---------------------------------
_CheckPixlexCollision::
	add	sp, #-5
	ld	c, a
	ldhl	sp,	#4
	ld	(hl), e
;main.c:320: x_tile = (x - 8) / 8;
	ldhl	sp,	#0
	ld	a, c
	ld	(hl+), a
	ld	(hl), #0x00
	pop	de
	push	de
	ld	hl, #0x0008
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00103$
	pop	de
	push	de
	ld	hl, #0xffff
	add	hl, de
	ld	c, l
	ld	b, h
00103$:
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl, #_x_tile
	ld	(hl), c
;main.c:321: y_tile = (y - 16) / 8;
	ldhl	sp,	#4
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), #0x00
	pop	de
	push	de
	ld	hl, #0x0010
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00104$
	pop	de
	push	de
	ld	hl, #0xfff7
	add	hl, de
	ld	c, l
	ld	b, h
00104$:
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl, #_y_tile
;main.c:322: tile_index = 20 * y_tile + x_tile;
	ld	(hl),c
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, #_x_tile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	a, h
	ld	hl, #_tile_index
	ld	(hl), c
	inc	hl
	ld	(hl), a
;main.c:324: return maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2];
	ld	bc, #_maps+0
	ld	hl, #_map_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_tile_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_tile_index + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, (#_walkable_tiles + 0)
	push	af
	ld	a, (bc)
	ld	c, a
	pop	af
	sub	a, c
	jr	Z, 00105$
	ld	a, (#(_walkable_tiles + 1) + 0)
	sub	a, c
	jr	Z, 00105$
	ld	a, (#(_walkable_tiles + 2) + 0)
	sub	a, c
	jr	NZ, 00106$
00105$:
	xor	a, a
	jr	00107$
00106$:
	ld	a, #0x01
00107$:
;main.c:325: }
	add	sp, #5
	ret
;main.c:327: UBYTE PlayerCanMove(enum direction dir)
;	---------------------------------
; Function PlayerCanMove
; ---------------------------------
_PlayerCanMove::
	add	sp, #-6
	ld	c, a
;main.c:335: if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
	ld	hl, #_map_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	inc	sp
	inc	sp
	push	hl
;main.c:329: if(dir == left){
	ld	a, c
	or	a, a
	jp	NZ, 00128$
;main.c:330: for (i = 0; i < 16; i += 5) {
	ld	hl, #_i
	ld	(hl), #0x00
00130$:
;main.c:331: x_tile = (player.left - 9) / 8;
	ld	a, (#(_player + 2) + 0)
	ld	c, a
	ld	b, #0x00
	ld	de, #0x0009
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#3
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	dec	hl
	bit	7, (hl)
	jr	Z, 00140$
	ld	hl, #0xfffe
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
00140$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl, #_x_tile
	ld	(hl), c
;main.c:332: y_tile = (player.up + i - 16) / 8;
	ld	a, (#(_player + 4) + 0)
	ld	c, a
	ld	b, #0x00
	ld	hl, #_i
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	de, #0x0010
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#3
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	dec	hl
	bit	7, (hl)
	jr	Z, 00141$
	ld	hl, #0xfff7
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
00141$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl, #_y_tile
;main.c:333: tile_index = 20 * y_tile + x_tile;
	ld	(hl),c
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, #_x_tile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	a, h
	ld	hl, #_tile_index
	ld	(hl), c
	inc	hl
	ld	(hl), a
;main.c:335: if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
	ld	de, #_maps
	pop	hl
	push	hl
	add	hl, de
	ld	e, l
	ld	d, h
	ld	hl, #_tile_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_tile_index + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	b, l
	ld	c, h
	ld	a, (#_walkable_tiles + 0)
	ld	l, b
	ld	h, c
	ld	c, (hl)
	sub	a, c
	jr	Z, 00131$
	ld	a, (#(_walkable_tiles + 1) + 0)
	sub	a, c
	jr	Z, 00131$
	ld	a, (#(_walkable_tiles + 2) + 0)
	sub	a, c
	jr	Z, 00131$
;main.c:336: return FALSE;
	xor	a, a
	jp	00138$
00131$:
;main.c:330: for (i = 0; i < 16; i += 5) {
	ld	hl, #_i
	ld	a, (hl)
	add	a, #0x05
	ld	(hl), a
	sub	a, #0x10
	jp	C, 00130$
;main.c:339: return TRUE;
	ld	a, #0x01
	jp	00138$
00128$:
;main.c:341: else if(dir == right){
	ld	a, c
	dec	a
	jp	NZ,00125$
;main.c:342: for (i = 0; i < 16; i += 5) {
	ld	hl, #_i
	ld	(hl), #0x00
00132$:
;main.c:343: x_tile = (player.right - 7) / 8;
	ld	a, (#(_player + 3) + 0)
	ld	c, a
	ld	b, #0x00
	ld	de, #0x0007
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#3
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	dec	hl
	bit	7, (hl)
	jr	Z, 00142$
	inc	hl
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
00142$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl, #_x_tile
	ld	(hl), c
;main.c:344: y_tile = (player.up + i - 16) / 8;
	ld	a, (#(_player + 4) + 0)
	ld	c, a
	ld	b, #0x00
	ld	hl, #_i
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	de, #0x0010
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#3
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	dec	hl
	bit	7, (hl)
	jr	Z, 00143$
	ld	hl, #0xfff7
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
00143$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl, #_y_tile
;main.c:345: tile_index = 20 * y_tile + x_tile;
	ld	(hl),c
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, #_x_tile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	a, h
	ld	hl, #_tile_index
	ld	(hl), c
	inc	hl
	ld	(hl), a
;main.c:347: if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
	ld	de, #_maps
	pop	hl
	push	hl
	add	hl, de
	ld	c, l
	ld	b, h
;main.c:335: if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
	ld	hl, #_tile_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_tile_index + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;main.c:347: if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, (#_walkable_tiles + 0)
	push	af
	ld	a, (bc)
	ld	c, a
	pop	af
	sub	a, c
	jr	Z, 00133$
	ld	a, (#(_walkable_tiles + 1) + 0)
	sub	a, c
	jr	Z, 00133$
	ld	a, (#(_walkable_tiles + 2) + 0)
	sub	a, c
	jr	Z, 00133$
;main.c:348: return FALSE;
	xor	a, a
	jp	00138$
00133$:
;main.c:342: for (i = 0; i < 16; i += 5) {
	ld	hl, #_i
	ld	a, (hl)
	add	a, #0x05
	ld	(hl), a
	sub	a, #0x10
	jp	C, 00132$
;main.c:351: return TRUE;
	ld	a, #0x01
	jp	00138$
00125$:
;main.c:353: else if(dir == up){
	ld	a, c
	sub	a, #0x02
	jp	NZ,00122$
;main.c:354: for (i = 0; i < 8; i += 7) {
	ld	hl, #_i
	ld	(hl), #0x00
00134$:
;main.c:355: x_tile = (player.left + i - 8) / 8;
	ld	a, (#(_player + 2) + 0)
	ld	c, a
	ld	b, #0x00
	ld	hl, #_i
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	de, #0x0008
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#3
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	dec	hl
	bit	7, (hl)
	jr	Z, 00144$
	ld	hl, #0xffff
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
00144$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl, #_x_tile
	ld	(hl), c
;main.c:356: y_tile = (player.up - 17) / 8;
	ld	a, (#(_player + 4) + 0)
	ldhl	sp,	#2
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0011
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00145$
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0xfff6
	add	hl, de
	ld	c, l
	ld	b, h
00145$:
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl, #_y_tile
;main.c:357: tile_index = 20 * y_tile + x_tile;
	ld	(hl),c
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, #_x_tile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	a, h
	ld	hl, #_tile_index
	ld	(hl), c
	inc	hl
	ld	(hl), a
;main.c:359: if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
	ld	de, #_maps
	pop	hl
	push	hl
	add	hl, de
	ld	e, l
	ld	d, h
;main.c:335: if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
	ld	hl, #_tile_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_tile_index + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;main.c:359: if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
	add	hl, de
	ld	b, l
	ld	c, h
	ld	a, (#_walkable_tiles + 0)
	ld	l, b
	ld	h, c
	ld	c, (hl)
	sub	a, c
	jr	Z, 00135$
	ld	a, (#(_walkable_tiles + 1) + 0)
	sub	a, c
	jr	Z, 00135$
	ld	a, (#(_walkable_tiles + 2) + 0)
	sub	a, c
	jr	Z, 00135$
;main.c:360: return FALSE;
	xor	a, a
	jp	00138$
00135$:
;main.c:354: for (i = 0; i < 8; i += 7) {
	ld	hl, #_i
	ld	a, (hl)
	add	a, #0x07
	ld	(hl), a
	sub	a, #0x08
	jp	C, 00134$
;main.c:363: return TRUE;    
	ld	a, #0x01
	jp	00138$
00122$:
;main.c:366: for (i = 0; i < 8; i += 7) {
	ld	hl, #_i
	ld	(hl), #0x00
00136$:
;main.c:367: x_tile = (player.left + i - 8) / 8;
	ld	a, (#(_player + 2) + 0)
	ld	c, a
	ld	b, #0x00
	ld	hl, #_i
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	de, #0x0008
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#3
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	dec	hl
	bit	7, (hl)
	jr	Z, 00146$
	ld	hl, #0xffff
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
00146$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl, #_x_tile
	ld	(hl), c
;main.c:368: y_tile = (player.down - 15) / 8;
	ld	a, (#(_player + 5) + 0)
	ldhl	sp,	#2
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000f
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00147$
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0xfff8
	add	hl, de
	ld	c, l
	ld	b, h
00147$:
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl, #_y_tile
;main.c:369: tile_index = 20 * y_tile + x_tile;
	ld	(hl),c
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, #_x_tile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	a, h
	ld	hl, #_tile_index
	ld	(hl), c
	inc	hl
	ld	(hl), a
;main.c:371: if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
	ld	de, #_maps
	pop	hl
	push	hl
	add	hl, de
	ld	c, l
	ld	b, h
;main.c:335: if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
	ld	hl, #_tile_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_tile_index + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;main.c:371: if(maps[map_index][tile_index] != walkable_tiles[0] && maps[map_index][tile_index] != walkable_tiles[1] && maps[map_index][tile_index] != walkable_tiles[2]){
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_walkable_tiles
	ld	l, (hl)
;	spillPairReg hl
	ld	a, (bc)
	cp	a, l
	jr	Z, 00137$
	ld	hl, #_walkable_tiles + 1
	ld	c, (hl)
	cp	a, c
	jr	Z, 00137$
	ld	hl, #_walkable_tiles + 2
	ld	c, (hl)
	sub	a, c
	jr	Z, 00137$
;main.c:372: return FALSE;
	xor	a, a
	jr	00138$
00137$:
;main.c:366: for (i = 0; i < 8; i += 7) {
	ld	hl, #_i
	ld	a, (hl)
	add	a, #0x07
	ld	(hl), a
	sub	a, #0x08
	jp	C, 00136$
;main.c:375: return TRUE;
	ld	a, #0x01
00138$:
;main.c:377: }
	add	sp, #6
	ret
;main.c:379: void JumpFall()
;	---------------------------------
; Function JumpFall
; ---------------------------------
_JumpFall::
;main.c:381: if(joypad_state & J_UP && !mid_air && PlayerCanMove(up)){
	ld	a, (#_joypad_state)
	bit	2, a
	jr	Z, 00102$
	ld	a, (#_mid_air)
	or	a, a
	jr	NZ, 00102$
	ld	a, #0x02
	call	_PlayerCanMove
	or	a, a
	jr	Z, 00102$
;main.c:382: mid_air_frames = 0;
	ld	hl, #_mid_air_frames
	ld	(hl), #0x00
00102$:
;main.c:385: if(ii % 8 != 0) {return;}
	ld	hl, #_ii
	ld	a, (hl+)
	and	a, #0x07
	ret	NZ
;main.c:387: if(mid_air_frames < JUMP_FORCE){
	ld	a, (#_mid_air_frames)
	ld	hl, #_JUMP_FORCE
	sub	a, (hl)
	jr	NC, 00111$
;main.c:388: mid_air = TRUE;
	ld	hl, #_mid_air
	ld	(hl), #0x01
;main.c:389: mid_air_frames++;
	ld	hl, #_mid_air_frames
	inc	(hl)
;main.c:390: if(PlayerCanMove(up)) player.location[1] -= 1;
	ld	a, #0x02
	call	_PlayerCanMove
	or	a, a
	jr	Z, 00108$
	ld	bc, #_player+1
	ld	a, (bc)
	dec	a
	ld	(bc), a
	ret
00108$:
;main.c:391: else mid_air_frames = 240;
	ld	hl, #_mid_air_frames
	ld	(hl), #0xf0
;main.c:392: return;
	ret
00111$:
;main.c:395: if(PlayerCanMove(down)){
	ld	a, #0x03
	call	_PlayerCanMove
	or	a, a
	jr	Z, 00113$
;main.c:396: player.location[1] += 1;
	ld	bc, #_player+1
	ld	a, (bc)
	inc	a
	ld	(bc), a
;main.c:397: mid_air = TRUE;
	ld	hl, #_mid_air
	ld	(hl), #0x01
	ret
00113$:
;main.c:400: mid_air = FALSE;
	ld	hl, #_mid_air
	ld	(hl), #0x00
;main.c:403: }
	ret
;main.c:405: void Update()
;	---------------------------------
; Function Update
; ---------------------------------
_Update::
;main.c:407: move_sprite(0, player.location[0], player.location[1]);
	ld	hl, #(_player + 1)
	ld	c, (hl)
	ld	hl, #_player
	ld	b, (hl)
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;main.c:408: move_sprite(1, player.location[0], player.location[1] + 8);
	ld	a, (#(_player + 1) + 0)
	add	a, #0x08
	ld	c, a
	ld	hl, #_player
	ld	b, (hl)
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 4)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;main.c:409: move_sprite(2, bullet.location[0], bullet.location[1]);
	ld	hl, #(_bullet + 5)
	ld	c, (hl)
	ld	hl, #(_bullet + 4)
	ld	b, (hl)
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 8)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;main.c:410: player.up = player.location[1];
	ld	bc, #_player + 1
	ld	a, (bc)
	ld	(#(_player + 4)),a
;main.c:411: player.down = player.location[1] + 15;
	ld	a, (bc)
	add	a, #0x0f
	ld	(#(_player + 5)),a
;main.c:412: player.left = player.location[0];
	ld	a, (#_player + 0)
	ld	(#(_player + 2)),a
;main.c:413: player.right = player.location[0] + 7;
	ld	a, (#_player + 0)
	add	a, #0x07
	ld	(#(_player + 3)),a
;main.c:414: joypad_state = joypad();
	call	_joypad
	ld	(#_joypad_state),a
;main.c:415: }
	ret
;main.c:417: void Animator()
;	---------------------------------
; Function Animator
; ---------------------------------
_Animator::
;main.c:419: if(prev_joypad_state != joypad_state){
	ld	a, (#_prev_joypad_state)
	ld	hl, #_joypad_state
	sub	a, (hl)
	jr	Z, 00110$
;main.c:420: if(joypad_state & J_RIGHT){
	ld	a, (#_joypad_state)
	bit	0, a
	jr	Z, 00104$
;c:/gbdk/include/gb/gb.h:1658: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 3) + 0)
;main.c:421: set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);
	ld	c, a
	res	5, c
;c:/gbdk/include/gb/gb.h:1648: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), c
;c:/gbdk/include/gb/gb.h:1658: return shadow_OAM[nb].prop;
	ld	a, (#(_shadow_OAM + 7) + 0)
;main.c:422: set_sprite_prop(1, get_sprite_prop(1) & ~S_FLIPX);
	ld	c, a
	res	5, c
;c:/gbdk/include/gb/gb.h:1648: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 7)
	ld	(hl), c
;main.c:422: set_sprite_prop(1, get_sprite_prop(1) & ~S_FLIPX);
	jr	00105$
00104$:
;main.c:424: else if(joypad_state & J_LEFT){
	bit	1, a
	jr	Z, 00105$
;c:/gbdk/include/gb/gb.h:1648: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), #0x20
	ld	hl, #(_shadow_OAM + 7)
	ld	(hl), #0x20
;main.c:426: set_sprite_prop(1, S_FLIPX);
00105$:
;main.c:428: if(joypad_state & J_DOWN){
	ld	a, (#_joypad_state)
	bit	3, a
	jr	Z, 00107$
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x7f
	ld	hl, #(_shadow_OAM + 6)
	ld	(hl), #0x12
;main.c:431: ducking = TRUE;
	ld	hl, #_ducking
	ld	(hl), #0x01
	jr	00110$
00107$:
;main.c:433: else ducking = FALSE;
	ld	hl, #_ducking
	ld	(hl), #0x00
00110$:
;main.c:436: if(ii % 40 == 0 && !mid_air){
	ld	hl, #_ii
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	bc, #0x0028
	call	__moduint
	ld	a, b
	or	a, c
	jp	NZ, 00131$
	ld	a, (#_mid_air)
	or	a, a
	jp	NZ, 00131$
;main.c:437: if(player_animation_state < 7) player_animation_state += 2;
	ld	hl, #_player_animation_state
	ld	a, (hl)
	sub	a, #0x07
	jr	NC, 00112$
	ld	a, (hl)
	add	a, #0x02
	ld	(hl), a
	jr	00113$
00112$:
;main.c:438: else player_animation_state = 2;
	ld	hl, #_player_animation_state
	ld	(hl), #0x02
00113$:
;main.c:440: if(player_shooting_animation_state < 4) player_shooting_animation_state += 2;
	ld	hl, #_player_shooting_animation_state
	ld	a, (hl)
	sub	a, #0x04
	jr	NC, 00115$
	ld	a, (hl)
	add	a, #0x02
	ld	(hl), a
	jr	00116$
00115$:
;main.c:441: else player_shooting_animation_state = 0;
	ld	hl, #_player_shooting_animation_state
	ld	(hl), #0x00
00116$:
;main.c:420: if(joypad_state & J_RIGHT){
	ld	hl, #_joypad_state
	ld	c, (hl)
;main.c:444: if(joypad_state & J_A && player_armed){
	bit	4, c
	jr	Z, 00127$
	ld	a, (#_player_armed)
	or	a, a
	jr	Z, 00127$
;main.c:445: if(joypad_state & J_LEFT || joypad_state & J_RIGHT){
	bit	1, c
	jr	NZ, 00117$
	bit	0, c
	jr	Z, 00118$
00117$:
;main.c:446: set_sprite_tile(0, 12 + player_shooting_animation_state);
	ld	a, (#_player_shooting_animation_state)
	add	a, #0x0c
	ld	c, a
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), c
;main.c:447: set_sprite_tile(1, 13 + player_shooting_animation_state);
	ld	a, (#_player_shooting_animation_state)
	add	a, #0x0d
	ld	c, a
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 6)
	ld	(hl), c
;main.c:447: set_sprite_tile(1, 13 + player_shooting_animation_state);
	jr	00131$
00118$:
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x0c
	ld	hl, #(_shadow_OAM + 6)
	ld	(hl), #0x0d
;main.c:451: set_sprite_tile(1, 13);
	jr	00131$
00127$:
;main.c:454: else if(joypad_state & (J_RIGHT | J_LEFT)){
	ld	a, c
	and	a, #0x03
	jr	Z, 00124$
;main.c:455: set_sprite_tile(0, player_animation_state);
	ld	hl, #_player_animation_state
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), c
;main.c:456: set_sprite_tile(1, player_animation_state + 1);
	ld	hl, #_player_animation_state
	ld	c, (hl)
	inc	c
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 6)
	ld	(hl), c
;main.c:456: set_sprite_tile(1, player_animation_state + 1);
	jr	00131$
00124$:
;main.c:458: else if(!ducking){
	ld	a, (#_ducking)
	or	a, a
	jr	NZ, 00131$
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x00
	ld	hl, #(_shadow_OAM + 6)
	ld	(hl), #0x01
;main.c:460: set_sprite_tile(1, 1);
00131$:
;main.c:464: if(mid_air){
	ld	a, (#_mid_air)
	or	a, a
	ret	Z
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x0a
	ld	hl, #(_shadow_OAM + 6)
	ld	(hl), #0x0b
;main.c:466: set_sprite_tile(1, 11);
;main.c:468: }
	ret
;main.c:470: void Shoot()
;	---------------------------------
; Function Shoot
; ---------------------------------
_Shoot::
;main.c:472: if(!player_armed) return;
	ld	a, (#_player_armed)
	or	a, a
	ret	Z
;main.c:474: if(joypad_state & J_A && bullet.frames_since_last_shoot > bullet.shoot_cooldown){
	ld	a, (#_joypad_state)
	bit	4, a
	jr	Z, 00113$
	ld	hl, #(_bullet + 2)
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #_bullet
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	sub	a, c
	ld	a, h
	sbc	a, b
	jr	NC, 00113$
;c:/gbdk/include/gb/gb.h:1658: return shadow_OAM[nb].prop;
	ld	hl, #(_shadow_OAM + 7)
	ld	l, (hl)
;	spillPairReg hl
;main.c:476: bullet.location[0] = player.location[0];
;main.c:477: if(ducking) bullet.location[1] = player.location[1] + 11;
	ld	bc, #_bullet + 5
;main.c:479: bullet.shot_right = FALSE;
;main.c:475: if(get_sprite_prop(1) == S_FLIPX){
	ld	a, l
	sub	a, #0x20
	jr	NZ, 00110$
;main.c:476: bullet.location[0] = player.location[0];
	ld	a, (#_player + 0)
	ld	(#(_bullet + 4)),a
;main.c:477: if(ducking) bullet.location[1] = player.location[1] + 11;
	ld	a, (#_ducking)
	or	a, a
	jr	Z, 00104$
	ld	a, (#(_player + 1) + 0)
	add	a, #0x0b
	ld	(bc), a
	jr	00105$
00104$:
;main.c:478: else bullet.location[1] = player.location[1] + 5;
	ld	a, (#(_player + 1) + 0)
	add	a, #0x05
	ld	(bc), a
00105$:
;main.c:479: bullet.shot_right = FALSE;
	ld	hl, #(_bullet + 6)
	ld	(hl), #0x00
	jr	00111$
00110$:
;main.c:482: bullet.location[0] = player.location[0] + 8;
	ld	a, (#_player + 0)
	add	a, #0x08
	ld	(#(_bullet + 4)),a
;main.c:483: if(ducking) bullet.location[1] = player.location[1] + 11;
	ld	a, (#_ducking)
	or	a, a
	jr	Z, 00107$
	ld	a, (#(_player + 1) + 0)
	add	a, #0x0b
	ld	(bc), a
	jr	00108$
00107$:
;main.c:484: else bullet.location[1] = player.location[1] + 5;
	ld	a, (#(_player + 1) + 0)
	add	a, #0x05
	ld	(bc), a
00108$:
;main.c:485: bullet.shot_right = TRUE;
	ld	hl, #(_bullet + 6)
	ld	(hl), #0x01
00111$:
;main.c:487: bullet.frames_since_last_shoot = 0;
	ld	hl, #(_bullet + 2)
	xor	a, a
	ld	(hl+), a
	ld	(hl), a
00113$:
;main.c:489: bullet.frames_since_last_shoot++;
	ld	hl, #(_bullet + 2)
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	ld	hl, #(_bullet + 2)
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;main.c:491: if(ii % 2 == 0) return;
	ld	hl, #_ii
	ld	a, (hl+)
	ld	c, (hl)
	rrca
	ret	NC
;main.c:493: if(bullet.location[0] > 1 && bullet.location[0] < 160 && !CheckPixlexCollision(bullet.location[0], bullet.location[1])){
	ld	hl, #_bullet + 4
	ld	c, (hl)
	ld	a, #0x01
	sub	a, c
	jr	NC, 00121$
	ld	a, c
	sub	a, #0xa0
	jr	NC, 00121$
	ld	de, #_bullet + 5
	ld	a, (de)
	ld	e, a
	push	hl
	ld	a, c
	call	_CheckPixlexCollision
	pop	hl
	or	a, a
	jr	NZ, 00121$
;main.c:494: if(bullet.shot_right){
	ld	bc, #_bullet + 6
	ld	a, (bc)
;main.c:493: if(bullet.location[0] > 1 && bullet.location[0] < 160 && !CheckPixlexCollision(bullet.location[0], bullet.location[1])){
	ld	c, (hl)
;main.c:494: if(bullet.shot_right){
	or	a, a
	jr	Z, 00118$
;main.c:495: bullet.location[0]++;
	inc	c
	ld	(hl), c
	ret
00118$:
;main.c:498: bullet.location[0]--;
	dec	c
	ld	(hl), c
	ret
00121$:
;main.c:502: bullet.location[0] = 200;
	ld	(hl), #0xc8
;main.c:504: }
	ret
;main.c:506: void GetGun()
;	---------------------------------
; Function GetGun
; ---------------------------------
_GetGun::
;main.c:508: player_armed = TRUE;
	ld	hl, #_player_armed
	ld	(hl), #0x01
;main.c:509: set_sprite_data(0, 20, Toko);
	ld	de, #_Toko
	push	de
	ld	hl, #0x1400
	push	hl
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x7f
;main.c:510: set_sprite_tile(3, 127);
;main.c:511: }
	ret
;main.c:513: void MapZero()
;	---------------------------------
; Function MapZero
; ---------------------------------
_MapZero::
;main.c:515: walkable_tiles[0] = walkable_tiles[1] = walkable_tiles[2] = 0x00;
	ld	hl, #(_walkable_tiles + 2)
	ld	(hl), #0x00
	ld	hl, #(_walkable_tiles + 1)
	ld	(hl), #0x00
	ld	hl, #_walkable_tiles
	ld	(hl), #0x00
;main.c:517: if(player.location[0] < 50) player.location[0] = 50;
	ld	bc, #_player+0
	ld	a, (bc)
	sub	a, #0x32
	jr	NC, 00102$
	ld	a, #0x32
	ld	(bc), a
00102$:
;main.c:519: if(joypad_state == J_B){
	ld	hl, #_joypad_state
	ld	a, (hl)
	sub	a, #0x20
	jr	NZ, 00104$
;main.c:520: Dialogue(king_dialogue);
	push	bc
	ld	de, #_king_dialogue
	call	_Dialogue
	pop	bc
00104$:
;main.c:523: if(player.location[0] > 159){
	ld	a, (bc)
	ld	c, a
	ld	a, #0x9f
	sub	a, c
	ret	NC
;main.c:524: MapOneStart(left);
	xor	a, a
;main.c:526: }
	jp	_MapOneStart
;main.c:528: void MapOneStart(enum direction dir)
;	---------------------------------
; Function MapOneStart
; ---------------------------------
_MapOneStart::
	ld	c, a
;main.c:530: map_index = 1;
	ld	hl, #_map_index
	ld	(hl), #0x01
;main.c:531: walkable_tiles[0] = 0x00;
	ld	hl, #_walkable_tiles
	ld	(hl), #0x00
;main.c:532: walkable_tiles[1] = walkable_tiles[2] = 0x01;
	ld	hl, #(_walkable_tiles + 2)
	ld	(hl), #0x01
	ld	hl, #(_walkable_tiles + 1)
	ld	(hl), #0x01
;main.c:533: set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
	ld	hl, #_map_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #_maps
	add	hl, de
	push	hl
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:534: set_sprite_data(20, 3, guard);
	ld	de, #_guard
	push	de
	ld	hl, #0x314
	push	hl
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x14
	ld	hl, #(_shadow_OAM + 18)
	ld	(hl), #0x16
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 12)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, #0x50
	ld	(hl+), a
	ld	(hl), #0x98
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 16)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, #0x58
	ld	(hl+), a
	ld	(hl), #0x98
;main.c:539: if(dir == left) player.location[0] = 10;
	ld	a, c
	or	a, a
	jr	NZ, 00107$
	ld	hl, #_player
	ld	(hl), #0x0a
	ret
00107$:
;main.c:540: else if(dir == up){
	ld	a, c
	sub	a, #0x02
	jr	NZ, 00104$
;main.c:541: player.location[0] = 158;
	ld	hl, #_player
	ld	(hl), #0x9e
;main.c:542: player.location[1] = 80;
	ld	hl, #(_player + 1)
	ld	(hl), #0x50
	ret
00104$:
;main.c:544: else if(dir == down){
	ld	a, c
	sub	a, #0x03
	ret	NZ
;main.c:545: player.location[0] = 158;
	ld	hl, #_player
	ld	(hl), #0x9e
;main.c:546: player.location[1] = 120;
	ld	hl, #(_player + 1)
	ld	(hl), #0x78
;main.c:548: }
	ret
;main.c:550: void MapOne()
;	---------------------------------
; Function MapOne
; ---------------------------------
_MapOne::
;main.c:552: if(ii % 300 == 0 && get_sprite_tile(3) == 21) set_sprite_tile(3, 20);
	ld	hl, #_ii
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	bc, #0x012c
	call	__moduint
	ld	a, b
	or	a, c
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1613: return shadow_OAM[nb].tile;
	ld	a, (#(_shadow_OAM + 14) + 0)
;main.c:552: if(ii % 300 == 0 && get_sprite_tile(3) == 21) set_sprite_tile(3, 20);
	sub	a, #0x15
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x14
;main.c:552: if(ii % 300 == 0 && get_sprite_tile(3) == 21) set_sprite_tile(3, 20);
	jr	00105$
00104$:
;main.c:553: else if(ii % 300 == 0) set_sprite_tile(3, 21);
	ld	a, b
	or	a, c
	jr	NZ, 00105$
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x15
;main.c:553: else if(ii % 300 == 0) set_sprite_tile(3, 21);
00105$:
;main.c:555: if(player.location[0] < 9){
	ld	de, #_player+0
	ld	a, (de)
	ld	c, a
	sub	a, #0x09
	jr	NC, 00122$
;main.c:556: map_index = 0;
	ld	hl, #_map_index
	ld	(hl), #0x00
;main.c:557: player.location[0] = 158;
	ld	a, #0x9e
	ld	(de), a
;main.c:558: set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
	ld	bc, #_maps+0
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	push	hl
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	xor	a, a
	call	_set_bkg_tiles
	add	sp, #6
;c:/gbdk/include/gb/gb.h:1703: shadow_OAM[nb].y = 0;
	ld	hl, #(_shadow_OAM + 12)
	ld	(hl), #0x00
	ld	hl, #(_shadow_OAM + 16)
	ld	(hl), #0x00
;main.c:560: hide_sprite(4);
	ret
00122$:
;main.c:562: else if(player.location[0] > 130 && player.location[1] < 120 && joypad_state == J_B){
	ld	a, #0x82
	sub	a, c
	jr	NC, 00117$
	ld	a, (#(_player + 1) + 0)
	sub	a, #0x78
	jr	NC, 00117$
	ld	hl, #_joypad_state
	ld	a, (hl)
	sub	a, #0x20
	jr	NZ, 00117$
;main.c:563: if(player_armed) Dialogue(guard_dialogue_greet);
	ld	hl, #_player_armed
	ld	a, (hl)
	or	a, a
	jr	Z, 00108$
	ld	de, #_guard_dialogue_greet
	jp	_Dialogue
00108$:
;main.c:564: else Dialogue(guard_dialogue);
	ld	de, #_guard_dialogue
	jp	_Dialogue
00117$:
;main.c:566: else if(player.location[0] > 159 && player.location[1] < 120){
	ld	a, #0x9f
	sub	a, c
	ld	a, #0x00
	rla
	ld	c, a
	or	a, a
	jr	Z, 00113$
	ld	a, (#(_player + 1) + 0)
	sub	a, #0x78
;main.c:567: MapTwoStart();
	jp	C,_MapTwoStart
00113$:
;main.c:569: else if(player.location[0] > 159){
	ld	a, c
	or	a, a
	ret	Z
;main.c:570: MapThreeStart(left);
	xor	a, a
;main.c:572: }
	jp	_MapThreeStart
;main.c:574: void MapTwoStart()
;	---------------------------------
; Function MapTwoStart
; ---------------------------------
_MapTwoStart::
;main.c:576: map_index = 2;
	ld	hl, #_map_index
	ld	(hl), #0x02
;main.c:577: walkable_tiles[0] = walkable_tiles[1] = walkable_tiles[2] = 0x00;
	ld	hl, #(_walkable_tiles + 2)
	ld	(hl), #0x00
	ld	hl, #(_walkable_tiles + 1)
	ld	(hl), #0x00
	ld	hl, #_walkable_tiles
	ld	(hl), #0x00
;main.c:578: set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
	ld	bc, #_maps+0
	ld	hl, #_map_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	push	hl
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	xor	a, a
	call	_set_bkg_tiles
	add	sp, #6
;main.c:579: player.location[0] = 10;
	ld	hl, #_player
	ld	(hl), #0x0a
;main.c:580: player.location[1] = 128;
	ld	hl, #(_player + 1)
	ld	(hl), #0x80
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x7f
	ld	hl, #(_shadow_OAM + 18)
	ld	(hl), #0x7f
;main.c:585: if(!snail[0].dead){
	ld	a, (#(_snail + 4) + 0)
	or	a, a
	jr	NZ, 00102$
;main.c:586: set_sprite_data(20, 1, SnailDraw);
	ld	de, #_SnailDraw
	push	de
	ld	hl, #0x114
	push	hl
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 22)
	ld	(hl), #0x14
;main.c:588: snail[0].location[0] = 100;
	ld	hl, #_snail
	ld	(hl), #0x64
;main.c:589: snail[0].location[1] = 136;
	ld	hl, #(_snail + 1)
	ld	(hl), #0x88
;main.c:590: snail[0].move_location[0] = 50;
	ld	hl, #(_snail + 2)
	ld	(hl), #0x32
;main.c:591: snail[0].move_location[1] = 120;
	ld	hl, #(_snail + 3)
	ld	(hl), #0x78
00102$:
;main.c:594: if(!player_armed){
	ld	a, (#_player_armed)
	or	a, a
	ret	NZ
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x13
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 12)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, #0x74
	ld	(hl+), a
	ld	(hl), #0x94
;main.c:596: move_sprite(3, 148, 116);
;main.c:598: }
	ret
;main.c:600: void MapTwo()
;	---------------------------------
; Function MapTwo
; ---------------------------------
_MapTwo::
;main.c:602: SnailManager(0, 5);
	ld	e, #0x05
	xor	a, a
	call	_SnailManager
;main.c:604: if(player.location[0] > 140 && !player_armed){
	ld	hl, #_player
	ld	c, (hl)
	ld	a, #0x8c
	sub	a, c
	jr	NC, 00104$
	ld	hl, #_player_armed
	ld	a, (hl)
	or	a, a
;main.c:605: GetGun();
	jp	Z,_GetGun
00104$:
;main.c:607: else if(player.location[0] < 9){
	ld	a, c
	sub	a, #0x09
	ret	NC
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 22)
	ld	(hl), #0x7f
;main.c:609: MapOneStart(up);
	ld	a, #0x02
;main.c:611: }
	jp	_MapOneStart
;main.c:613: void MapThreeStart(enum direction dir)
;	---------------------------------
; Function MapThreeStart
; ---------------------------------
_MapThreeStart::
	ld	c, a
;main.c:615: map_index = 3;
	ld	hl, #_map_index
	ld	(hl), #0x03
;main.c:616: walkable_tiles[0] = walkable_tiles[1] = walkable_tiles[2] = 0x00;
	ld	hl, #(_walkable_tiles + 2)
	ld	(hl), #0x00
	ld	hl, #(_walkable_tiles + 1)
	ld	(hl), #0x00
	ld	hl, #_walkable_tiles
	ld	(hl), #0x00
;main.c:617: set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
	ld	hl, #_map_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #_maps
	add	hl, de
	push	hl
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:618: set_sprite_data(20, 3, killer_draw);
	ld	de, #_killer_draw
	push	de
	ld	hl, #0x314
	push	hl
	call	_set_sprite_data
	add	sp, #4
;main.c:619: if(!killer[0].dead){
	ld	a, (#(_killer + 4) + 0)
	or	a, a
	jr	NZ, 00105$
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x14
	ld	hl, #(_shadow_OAM + 18)
	ld	(hl), #0x15
;main.c:622: if(player_armed) set_sprite_tile(19, 19);
	ld	a, (#_player_armed)
	or	a, a
	jr	Z, 00102$
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 78)
	ld	(hl), #0x13
;main.c:622: if(player_armed) set_sprite_tile(19, 19);
	jr	00103$
00102$:
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 78)
	ld	(hl), #0x16
;main.c:623: else set_sprite_tile(19, 22);
00103$:
;main.c:624: move_sprite(19, bullet_enemy.location[0], bullet_enemy.location[1]);
	ld	de, #_bullet_enemy + 4
	ld	hl, #_bullet_enemy + 5
	ld	b, (hl)
	ld	a, (de)
	ld	e, a
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 76)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), e
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 12)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, #0x68
	ld	(hl+), a
	ld	(hl), #0x98
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 16)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, #0x70
	ld	(hl+), a
	ld	(hl), #0x98
;main.c:627: killer[0].location[0] = 152;
	ld	hl, #_killer
	ld	(hl), #0x98
;main.c:628: killer[0].location[1] = 104;
	ld	hl, #(_killer + 1)
	ld	(hl), #0x68
	jr	00106$
00105$:
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x7f
	ld	hl, #(_shadow_OAM + 18)
	ld	(hl), #0x7f
	ld	hl, #(_shadow_OAM + 22)
	ld	(hl), #0x7f
;main.c:633: set_sprite_tile(5, 127);
00106$:
;main.c:637: if(dir == left) player.location[0] = 10;
	ld	a, c
	or	a, a
	jr	NZ, 00110$
	ld	hl, #_player
	ld	(hl), #0x0a
	ret
00110$:
;main.c:638: else if(dir == right) player.location[0] = 158;
	dec	c
	ret	NZ
	ld	hl, #_player
	ld	(hl), #0x9e
;main.c:639: }
	ret
;main.c:641: void MapThree()
;	---------------------------------
; Function MapThree
; ---------------------------------
_MapThree::
;main.c:643: KillerManager(0, 3, FALSE);
	xor	a, a
	push	af
	inc	sp
	ld	e, #0x03
	xor	a, a
	call	_KillerManager
;main.c:645: if(player.location[0] < 9) MapOneStart(down);
	ld	hl, #_player
	ld	c, (hl)
	ld	a, c
	sub	a, #0x09
	jr	NC, 00110$
	ld	a, #0x03
	jp	_MapOneStart
00110$:
;main.c:646: else if(player.location[0] > 159 && player_armed) MapFourStart(left);
	ld	a, #0x9f
	sub	a, c
	ld	a, #0x00
	rla
	ld	c, a
	or	a, a
	jr	Z, 00106$
	ld	hl, #_player_armed
	ld	a, (hl)
	or	a, a
	jr	Z, 00106$
	xor	a, a
	jp	_MapFourStart
00106$:
;main.c:647: else if(player.location[0] > 159 && !player_armed && joypad_state == J_RIGHT) Dialogue(gunless_warning);
	ld	a, c
	or	a, a
	ret	Z
	ld	a, (#_player_armed)
	or	a, a
	ret	NZ
	ld	hl, #_joypad_state
	ld	a, (hl)
	dec	a
	ret	NZ
	ld	de, #_gunless_warning
;main.c:648: }
	jp	_Dialogue
;main.c:650: void MapFourStart(enum direction dir)
;	---------------------------------
; Function MapFourStart
; ---------------------------------
_MapFourStart::
	ld	c, a
;main.c:652: walkable_tiles[0] = walkable_tiles[1] = 0x00;
	ld	hl, #(_walkable_tiles + 1)
	ld	(hl), #0x00
	ld	hl, #_walkable_tiles
	ld	(hl), #0x00
;main.c:653: walkable_tiles[2] = 0x07;
	ld	hl, #(_walkable_tiles + 2)
	ld	(hl), #0x07
;main.c:654: map_index = 4;
	ld	hl, #_map_index
	ld	(hl), #0x04
;main.c:655: set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
	ld	de, #(_maps + 1440)
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:657: if(dir == left){
	ld	a, c
	or	a, a
	jr	NZ, 00104$
;main.c:658: player.location[0] = 10;
	ld	hl, #_player
	ld	(hl), #0x0a
	ret
00104$:
;main.c:660: else if(dir == right){
	dec	c
	ret	NZ
;main.c:661: player.location[0] = 158;
	ld	hl, #_player
	ld	(hl), #0x9e
;main.c:663: }
	ret
;main.c:665: void MapFour()
;	---------------------------------
; Function MapFour
; ---------------------------------
_MapFour::
;main.c:667: if(player.location[0] > 159) MapFiveStart(left);
	ld	hl, #_player
	ld	c, (hl)
	ld	a, #0x9f
	sub	a, c
	jr	NC, 00107$
	xor	a, a
	jp	_MapFiveStart
00107$:
;main.c:668: else if(player.location[0] < 9) {
	ld	a, c
	sub	a, #0x09
	jr	NC, 00104$
;main.c:669: player.location[1]++;
	ld	bc, #_player+1
	ld	a, (bc)
	inc	a
	ld	(bc), a
;main.c:670: MapThreeStart(right);
	ld	a, #0x01
	jp	_MapThreeStart
00104$:
;main.c:672: else if(player.location[1] > 130) MapSixStart(up);
	ld	hl, #(_player + 1)
	ld	c, (hl)
	ld	a, #0x82
	sub	a, c
	ret	NC
	ld	a, #0x02
;main.c:673: }
	jp	_MapSixStart
;main.c:675: void MapFiveStart(enum direction dir)
;	---------------------------------
; Function MapFiveStart
; ---------------------------------
_MapFiveStart::
	ld	c, a
;main.c:677: map_index = 5;
	ld	hl, #_map_index
	ld	(hl), #0x05
;main.c:678: walkable_tiles[0] = 0x00;
	ld	hl, #_walkable_tiles
	ld	(hl), #0x00
;main.c:679: walkable_tiles[1] = 0x07;
	ld	hl, #(_walkable_tiles + 1)
	ld	(hl), #0x07
;main.c:680: walkable_tiles[2] = 0x08;
	ld	hl, #(_walkable_tiles + 2)
	ld	(hl), #0x08
;main.c:681: set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
	ld	hl, #_map_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #_maps
	add	hl, de
	push	hl
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:683: if(dir == left){
	ld	a, c
	or	a, a
	jr	NZ, 00104$
;main.c:684: player.location[0] = 10;
	ld	hl, #_player
	ld	(hl), #0x0a
	jr	00105$
00104$:
;main.c:686: else if(dir == down){
	ld	a, c
	sub	a, #0x03
	jr	NZ, 00105$
;main.c:687: player.location[0] = 152;
	ld	hl, #_player
	ld	(hl), #0x98
;main.c:688: player.location[1] = 104;
	ld	hl, #(_player + 1)
	ld	(hl), #0x68
00105$:
;main.c:691: gold.location[0] = 152;
	ld	hl, #_gold
	ld	(hl), #0x98
;main.c:692: gold.location[1] = 108;
	ld	bc, #_gold+1
	ld	a, #0x6c
	ld	(bc), a
;main.c:693: if(!gold_one_took) {
	ld	a, (#_gold_one_took)
	or	a, a
	jr	NZ, 00107$
;main.c:694: set_sprite_data(20, 6, coin);
	ld	de, #_coin
	push	de
	ld	hl, #0x614
	push	hl
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x14
;main.c:696: move_sprite(3, gold.location[0], gold.location[1]);
	ld	a, (bc)
	ld	b, a
	ld	hl, #_gold
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 12)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;main.c:696: move_sprite(3, gold.location[0], gold.location[1]);
00107$:
;main.c:698: gold.location[0] = 152;
	ld	hl, #_gold
	ld	(hl), #0x98
;main.c:699: gold.location[1] = 108;
	ld	hl, #(_gold + 1)
	ld	(hl), #0x6c
;main.c:700: }
	ret
;main.c:702: void MapFive()
;	---------------------------------
; Function MapFive
; ---------------------------------
_MapFive::
;main.c:704: if(ii % 100 == 0 && !gold_one_took){
	ld	hl, #_ii
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	bc, #0x0064
	call	__moduint
	ld	a, b
	or	a, c
	jr	NZ, 00105$
	ld	a, (#_gold_one_took)
	or	a, a
	jr	NZ, 00105$
;main.c:705: uint8_t gold_sprite = get_sprite_tile(3);
	ld	a, (#(_shadow_OAM + 14) + 0)
;main.c:706: if(gold_sprite < 25) set_sprite_tile(3, gold_sprite + 1);
	cp	a, #0x19
	jr	NC, 00102$
	ld	c, a
	inc	c
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), c
;main.c:706: if(gold_sprite < 25) set_sprite_tile(3, gold_sprite + 1);
	jr	00105$
00102$:
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x14
;main.c:707: else set_sprite_tile(3, 20);
00105$:
;main.c:710: if(player.location[0] > 148 && !gold_one_took) {
	ld	hl, #_player
	ld	c, (hl)
	ld	a, #0x94
	sub	a, c
	jr	NC, 00110$
	ld	a, (#_gold_one_took)
	or	a, a
	jr	NZ, 00110$
;c:/gbdk/include/gb/gb.h:1703: shadow_OAM[nb].y = 0;
	ld	hl, #(_shadow_OAM + 12)
	ld	(hl), #0x00
;main.c:712: gold_one_took = TRUE;
	ld	hl, #_gold_one_took
	ld	(hl), #0x01
	ret
00110$:
;main.c:714: else if(player.location[0] < 10) {
	ld	a, c
	sub	a, #0x0a
	ret	NC
;c:/gbdk/include/gb/gb.h:1703: shadow_OAM[nb].y = 0;
	ld	hl, #(_shadow_OAM + 12)
	ld	(hl), #0x00
;main.c:716: MapFourStart(right);
	ld	a, #0x01
;main.c:718: }
	jp	_MapFourStart
;main.c:720: void MapSixStart(enum direction dir)
;	---------------------------------
; Function MapSixStart
; ---------------------------------
_MapSixStart::
	ld	c, a
;main.c:722: walkable_tiles[0] = walkable_tiles[1] = 0x00;
	ld	hl, #(_walkable_tiles + 1)
	ld	(hl), #0x00
	ld	hl, #_walkable_tiles
	ld	(hl), #0x00
;main.c:723: walkable_tiles[2] = 0x07;
	ld	hl, #(_walkable_tiles + 2)
	ld	(hl), #0x07
;main.c:724: if(dir == up){
	ld	a, c
	sub	a, #0x02
	jr	NZ, 00107$
;main.c:725: player.location[1] = 16;
	ld	hl, #(_player + 1)
	ld	(hl), #0x10
;main.c:726: player.location[0] -= 40;
	ld	bc, #_player+0
	ld	a, (bc)
	add	a, #0xd8
	ld	(bc), a
	jr	00108$
00107$:
;main.c:728: else if(dir == right){
	ld	a, c
	dec	a
	jr	NZ, 00104$
;main.c:729: player.location[0] = 158;
	ld	hl, #_player
	ld	(hl), #0x9e
;main.c:730: player.location[1] += 7;
	ld	bc, #_player+1
	ld	a, (bc)
	add	a, #0x07
	ld	(bc), a
	jr	00108$
00104$:
;main.c:732: else if(dir == left){
	ld	a, c
	or	a, a
	jr	NZ, 00108$
;main.c:733: player.location[0] = 10;
	ld	hl, #_player
	ld	(hl), #0x0a
00108$:
;main.c:735: map_index = 6;
	ld	hl, #_map_index
	ld	(hl), #0x06
;main.c:736: set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
	ld	de, #(_maps + 2160)
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:737: }
	ret
;main.c:739: void MapSix()
;	---------------------------------
; Function MapSix
; ---------------------------------
_MapSix::
;main.c:741: if(player.location[0] > 159) MapSevenStart(left);
	ld	hl, #_player
	ld	c, (hl)
	ld	a, #0x9f
	sub	a, c
	jr	NC, 00104$
	xor	a, a
	jp	_MapSevenStart
00104$:
;main.c:742: else if(player.location[0] < 10) MapEightStart();
	ld	a, c
	sub	a, #0x0a
	jp	C,_MapEightStart
;main.c:743: }
	ret
;main.c:745: void MapSevenStart(enum direction dir)
;	---------------------------------
; Function MapSevenStart
; ---------------------------------
_MapSevenStart::
	ld	c, a
;main.c:747: map_index = 7;
	ld	hl, #_map_index
	ld	(hl), #0x07
;main.c:748: walkable_tiles[0] = 0x00;
	ld	hl, #_walkable_tiles
	ld	(hl), #0x00
;main.c:749: walkable_tiles[1] = 0x13;
	ld	hl, #(_walkable_tiles + 1)
	ld	(hl), #0x13
;main.c:750: if(player.has_key[0]) walkable_tiles[2] = 0x14;
	ld	a, (#(_player + 6) + 0)
	ld	hl, #_walkable_tiles + 2
	or	a, a
	jr	Z, 00102$
	ld	(hl), #0x14
	jr	00103$
00102$:
;main.c:751: else walkable_tiles[2] = 0x13;
	ld	(hl), #0x13
00103$:
;main.c:752: set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
	ld	hl, #_map_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #_maps
	add	hl, de
	push	hl
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:758: player.location[1] -= 8;
;main.c:756: if(dir == left){
	ld	a, c
	or	a, a
	jr	NZ, 00107$
;main.c:757: player.location[0] = 10;
	ld	hl, #_player
	ld	(hl), #0x0a
;main.c:758: player.location[1] -= 8;
	ld	a, (#(_player + 1) + 0)
	add	a, #0xf8
	ld	(#(_player + 1)),a
	ret
00107$:
;main.c:760: else if (dir == right){
	dec	c
	ret	NZ
;main.c:761: player.location[0] = 158;
	ld	hl, #_player
	ld	(hl), #0x9e
;main.c:762: player.location[1] -= 8;
	ld	a, (#(_player + 1) + 0)
	add	a, #0xf8
	ld	(#(_player + 1)),a
;main.c:764: }
	ret
;main.c:766: void MapSeven()
;	---------------------------------
; Function MapSeven
; ---------------------------------
_MapSeven::
;main.c:768: if(player.location[0] < 9) MapSixStart(right);
	ld	a, (#_player + 0)
	sub	a, #0x09
	jr	NC, 00107$
	ld	a, #0x01
	jp	_MapSixStart
00107$:
;main.c:769: else if(player.location[1] > 124) ResetGameBoy();
	ld	hl, #(_player + 1)
	ld	c, (hl)
	ld	a, #0x7c
	sub	a, c
	jp	C,_ResetGameBoy
;main.c:770: else if(player.location[0] > 159){
	ld	hl, #_player
	ld	c, (hl)
	ld	a, #0x9f
	sub	a, c
	ret	NC
;main.c:771: MapNineStart(down);
	ld	a, #0x03
;main.c:773: }
	jp	_MapNineStart
;main.c:775: void MapEightStart()
;	---------------------------------
; Function MapEightStart
; ---------------------------------
_MapEightStart::
;main.c:777: map_index = 8;
	ld	hl, #_map_index
	ld	(hl), #0x08
;main.c:778: walkable_tiles[0] = 0x00;
	ld	hl, #_walkable_tiles
	ld	(hl), #0x00
;main.c:779: walkable_tiles[1] = 0x16;
	ld	hl, #(_walkable_tiles + 1)
	ld	(hl), #0x16
;main.c:780: walkable_tiles[2] = 0x20;
	ld	hl, #(_walkable_tiles + 2)
	ld	(hl), #0x20
;main.c:781: set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
	ld	bc, #_maps+0
	ld	hl, #_map_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	push	hl
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:782: player.location[0] = 158;
	ld	hl, #_player
	ld	(hl), #0x9e
;main.c:784: if(!snail[1].dead){
	ld	a, (#(_snail + 9) + 0)
	or	a, a
	jr	NZ, 00102$
;main.c:785: set_sprite_data(20, 1, SnailDraw);
	ld	de, #_SnailDraw
	push	de
	ld	hl, #0x114
	push	hl
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 22)
	ld	(hl), #0x14
;main.c:787: snail[1].location[0] = 100;
	ld	hl, #(_snail + 5)
	ld	(hl), #0x64
;main.c:788: snail[1].location[1] = 136;
	ld	hl, #(_snail + 6)
	ld	(hl), #0x88
;main.c:789: snail[1].move_location[0] = 50;
	ld	hl, #(_snail + 7)
	ld	(hl), #0x32
;main.c:790: snail[1].move_location[1] = 120;
	ld	hl, #(_snail + 8)
	ld	(hl), #0x78
00102$:
;main.c:793: if(!killer[1].dead){
	ld	a, (#(_killer + 9) + 0)
	or	a, a
	jr	NZ, 00104$
;main.c:794: set_sprite_data(21, 3, killer_draw);
	ld	de, #_killer_draw
	push	de
	ld	hl, #0x315
	push	hl
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x15
	ld	hl, #(_shadow_OAM + 18)
	ld	(hl), #0x16
	ld	hl, #(_shadow_OAM + 78)
	ld	(hl), #0x13
;main.c:798: move_sprite(19, bullet_enemy.location[0], bullet_enemy.location[1]);
	ld	bc, #_bullet_enemy + 4
	ld	hl, #_bullet_enemy + 5
	ld	e, (hl)
	ld	a, (bc)
	ld	c, a
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 76)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, e
	ld	(hl+), a
	ld	(hl), c
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 12)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, #0x40
	ld	(hl+), a
	ld	(hl), #0x90
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 16)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, #0x48
	ld	(hl+), a
	ld	(hl), #0x90
;main.c:801: killer[1].location[0] = 144;
	ld	hl, #(_killer + 5)
	ld	(hl), #0x90
;main.c:802: killer[1].location[1] = 64;
	ld	hl, #(_killer + 6)
	ld	(hl), #0x40
00104$:
;main.c:805: if(!player_armed){
	ld	a, (#_player_armed)
	or	a, a
	ret	NZ
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x13
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 12)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, #0x74
	ld	(hl+), a
	ld	(hl), #0x94
;main.c:807: move_sprite(3, 148, 116);
;main.c:809: }
	ret
;main.c:811: void MapEight()
;	---------------------------------
; Function MapEight
; ---------------------------------
_MapEight::
;main.c:813: KillerManager(1, 3, FALSE);
	xor	a, a
	push	af
	inc	sp
	ld	e, #0x03
	ld	a, #0x01
	call	_KillerManager
;main.c:814: SnailManager(1, 5);
	ld	e, #0x05
	ld	a, #0x01
	call	_SnailManager
;main.c:816: if(player.location[0] < 24 && player.location[1] < 48){
	ld	hl, #_player
	ld	c, (hl)
	ld	a, c
	sub	a, #0x18
	jr	NC, 00104$
	ld	a, (#(_player + 1) + 0)
	sub	a, #0x30
	jr	NC, 00104$
;main.c:817: set_bkg_tiles(1, 3, 1, 1, blankmap);
	ld	de, #_blankmap
	push	de
	ld	hl, #0x101
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	ld	a, #0x01
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;main.c:818: player.has_key[0] = TRUE;
	ld	hl, #(_player + 6)
	ld	(hl), #0x01
	ret
00104$:
;main.c:820: else if(player.location[0] > 159){
	ld	a, #0x9f
	sub	a, c
	ret	NC
;c:/gbdk/include/gb/gb.h:1703: shadow_OAM[nb].y = 0;
	ld	hl, #(_shadow_OAM + 20)
	ld	(hl), #0x00
	ld	hl, #(_shadow_OAM + 12)
	ld	(hl), #0x00
	ld	hl, #(_shadow_OAM + 16)
	ld	(hl), #0x00
;main.c:824: MapSixStart(left);
	xor	a, a
;main.c:826: }
	jp	_MapSixStart
;main.c:828: void MapNineStart(enum direction dir)
;	---------------------------------
; Function MapNineStart
; ---------------------------------
_MapNineStart::
	ld	c, a
;main.c:830: map_index = 9;
	ld	hl, #_map_index
	ld	(hl), #0x09
;main.c:831: walkable_tiles[0] = 0x00;
	ld	hl, #_walkable_tiles
	ld	(hl), #0x00
;main.c:832: walkable_tiles[1] = 0x08;
	ld	hl, #(_walkable_tiles + 1)
	ld	(hl), #0x08
;main.c:833: walkable_tiles[2] = 0x15;
	ld	hl, #(_walkable_tiles + 2)
	ld	(hl), #0x15
;main.c:834: set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
	ld	hl, #_map_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #_maps
	add	hl, de
	push	hl
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:836: if(dir == down) {
	ld	a, c
	sub	a, #0x03
	jr	NZ, 00107$
;main.c:837: player.location[0] = 10;
	ld	hl, #_player
	ld	(hl), #0x0a
;main.c:838: player.location[1] += 8;
	ld	bc, #_player+1
	ld	a, (bc)
	add	a, #0x08
	ld	(bc), a
	ret
00107$:
;main.c:840: else if(dir == up) player.location[0] = 10;
	ld	a, c
	sub	a, #0x02
	jr	NZ, 00104$
	ld	hl, #_player
	ld	(hl), #0x0a
	ret
00104$:
;main.c:841: else if(dir == right){
	dec	c
	ret	NZ
;main.c:842: player.location[0] = 158;
	ld	hl, #_player
	ld	(hl), #0x9e
;main.c:843: player.location[1] = 24;
	ld	hl, #(_player + 1)
	ld	(hl), #0x18
;main.c:845: }
	ret
;main.c:847: void MapNine()
;	---------------------------------
; Function MapNine
; ---------------------------------
_MapNine::
;main.c:849: if( (player.location[0] > 136 && player.location[1] > 56) || (player.location[0] < 32 && player.location[1] < 88) ) JUMP_FORCE = 72;
	ld	hl, #_player
	ld	c, (hl)
	ld	a, #0x88
	sub	a, c
	jr	NC, 00106$
	ld	hl, #(_player + 1)
	ld	b, (hl)
	ld	a, #0x38
	sub	a, b
	jr	C, 00101$
00106$:
	ld	a, c
	sub	a, #0x20
	jr	NC, 00102$
	ld	a, (#(_player + 1) + 0)
	sub	a, #0x58
	jr	NC, 00102$
00101$:
	ld	hl, #_JUMP_FORCE
	ld	(hl), #0x48
	jr	00103$
00102$:
;main.c:850: else JUMP_FORCE = 25;
	ld	hl, #_JUMP_FORCE
	ld	(hl), #0x19
00103$:
;main.c:852: if(player.location[0] < 9 && player.location[1] > 96){
	ld	hl, #_player
	ld	c, (hl)
	ld	a, c
	sub	a, #0x09
	ld	a, #0x00
	rla
	ld	b, a
	or	a, a
	jr	Z, 00113$
	ld	hl, #(_player + 1)
	ld	l, (hl)
;	spillPairReg hl
	ld	a, #0x60
	sub	a, l
	jr	NC, 00113$
;main.c:853: JUMP_FORCE = 25;
	ld	hl, #_JUMP_FORCE
	ld	(hl), #0x19
;main.c:854: MapSevenStart(right);
	ld	a, #0x01
	jp	_MapSevenStart
00113$:
;main.c:856: else if(player.location[0] < 9){
	ld	a, b
	or	a, a
	jr	Z, 00110$
;main.c:857: JUMP_FORCE = 25;
	ld	hl, #_JUMP_FORCE
	ld	(hl), #0x19
;main.c:858: MapTenStart(right);
	ld	a, #0x01
	jp	_MapTenStart
00110$:
;main.c:860: else if(player.location[0] > 159){
	ld	a, #0x9f
	sub	a, c
	ret	NC
;main.c:861: JUMP_FORCE = 25;
	ld	hl, #_JUMP_FORCE
	ld	(hl), #0x19
;main.c:862: MapElevenStart();
;main.c:864: }
	jp	_MapElevenStart
;main.c:866: void MapTenStart(enum direction dir)
;	---------------------------------
; Function MapTenStart
; ---------------------------------
_MapTenStart::
	ld	c, a
;main.c:868: map_index = 10;
	ld	hl, #_map_index
	ld	(hl), #0x0a
;main.c:869: walkable_tiles[0] = 0x00;
	ld	hl, #_walkable_tiles
	ld	(hl), #0x00
;main.c:870: walkable_tiles[1] = 0x07;
	ld	hl, #(_walkable_tiles + 1)
	ld	(hl), #0x07
;main.c:871: walkable_tiles[2] = 0x08;
	ld	hl, #(_walkable_tiles + 2)
	ld	(hl), #0x08
;main.c:872: set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
	ld	hl, #_map_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #_maps
	add	hl, de
	push	hl
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:873: set_sprite_data(20, 6, coin);
	ld	de, #_coin
	push	de
	ld	hl, #0x614
	push	hl
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x14
;main.c:876: if(dir == right){
	ld	a, c
	dec	a
	jr	NZ, 00104$
;main.c:877: player.location[0] = 158;
	ld	hl, #_player
	ld	(hl), #0x9e
	jr	00105$
00104$:
;main.c:879: else if(dir == down){
	ld	a, c
	sub	a, #0x03
	jr	NZ, 00105$
;main.c:880: player.location[0] = 20;
	ld	hl, #_player
	ld	(hl), #0x14
;main.c:881: player.location[1] = 128;
	ld	hl, #(_player + 1)
	ld	(hl), #0x80
00105$:
;main.c:883: gold.location[0] = 20;
	ld	hl, #_gold
	ld	(hl), #0x14
;main.c:884: gold.location[1] = 132;
	ld	bc, #_gold+1
	ld	a, #0x84
	ld	(bc), a
;main.c:885: move_sprite(3, gold.location[0], gold.location[1]);
	ld	a, (bc)
	ld	b, a
	ld	hl, #_gold
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 12)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;main.c:885: move_sprite(3, gold.location[0], gold.location[1]);
;main.c:886: }
	ret
;main.c:888: void MapTen()
;	---------------------------------
; Function MapTen
; ---------------------------------
_MapTen::
;main.c:890: if(ii % 100 == 0 && !gold_two_took){
	ld	hl, #_ii
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	bc, #0x0064
	call	__moduint
	ld	a, b
	or	a, c
	jr	NZ, 00105$
	ld	a, (#_gold_two_took)
	or	a, a
	jr	NZ, 00105$
;c:/gbdk/include/gb/gb.h:1613: return shadow_OAM[nb].tile;
	ld	a, (#(_shadow_OAM + 14) + 0)
;main.c:891: if(get_sprite_tile(3) < 25) set_sprite_tile(3, get_sprite_tile(3) + 1);
	sub	a, #0x19
	jr	NC, 00102$
;c:/gbdk/include/gb/gb.h:1613: return shadow_OAM[nb].tile;
	ld	a, (#(_shadow_OAM + 14) + 0)
;main.c:891: if(get_sprite_tile(3) < 25) set_sprite_tile(3, get_sprite_tile(3) + 1);
	ld	c, a
	inc	c
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), c
;main.c:891: if(get_sprite_tile(3) < 25) set_sprite_tile(3, get_sprite_tile(3) + 1);
	jr	00105$
00102$:
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x14
;main.c:892: else set_sprite_tile(3, 20);
00105$:
;main.c:895: if(player.location[0] > 159){
	ld	hl, #_player
	ld	c, (hl)
	ld	a, #0x9f
	sub	a, c
	jr	NC, 00111$
;c:/gbdk/include/gb/gb.h:1703: shadow_OAM[nb].y = 0;
	ld	hl, #(_shadow_OAM + 12)
	ld	(hl), #0x00
;main.c:897: MapNineStart(up);
	ld	a, #0x02
	jp	_MapNineStart
00111$:
;main.c:899: else if(player.location[0] < 32 && player.location[1] > 120){
	ld	a, c
	sub	a, #0x20
	ret	NC
	ld	hl, #(_player + 1)
	ld	c, (hl)
	ld	a, #0x78
	sub	a, c
	ret	NC
;c:/gbdk/include/gb/gb.h:1703: shadow_OAM[nb].y = 0;
	ld	hl, #(_shadow_OAM + 12)
	ld	(hl), #0x00
;main.c:901: gold_two_took = TRUE;
	ld	hl, #_gold_two_took
	ld	(hl), #0x01
;main.c:903: }
	ret
;main.c:905: void MapElevenStart()
;	---------------------------------
; Function MapElevenStart
; ---------------------------------
_MapElevenStart::
;main.c:907: map_index = 11;
	ld	hl, #_map_index
	ld	(hl), #0x0b
;main.c:908: walkable_tiles[0] = walkable_tiles[1] = 0x00;
	ld	hl, #(_walkable_tiles + 1)
	ld	(hl), #0x00
	ld	hl, #_walkable_tiles
	ld	(hl), #0x00
;main.c:909: walkable_tiles[2] = 0x35;
	ld	hl, #(_walkable_tiles + 2)
	ld	(hl), #0x35
;main.c:910: set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
	ld	bc, #_maps+0
	ld	hl, #_map_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	push	hl
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	xor	a, a
	call	_set_bkg_tiles
	add	sp, #6
;main.c:911: player.location[0] = 10;
	ld	hl, #_player
	ld	(hl), #0x0a
;main.c:912: }
	ret
;main.c:914: void MapEleven()
;	---------------------------------
; Function MapEleven
; ---------------------------------
_MapEleven::
;main.c:916: if(ii % 9 == 0) backgroundoffset3x++;
	ld	hl, #_ii
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	bc, #0x0009
	call	__moduint
	ld	a, b
	or	a, c
	jr	NZ, 00102$
	ld	hl, #_backgroundoffset3x
	inc	(hl)
00102$:
;main.c:918: if(player.location[0] > 118) player.location[0] = 118;
	ld	hl, #_player
	ld	c, (hl)
	ld	a, #0x76
	sub	a, c
	jr	NC, 00111$
	ld	hl, #_player
	ld	(hl), #0x76
	ret
00111$:
;main.c:919: else if(player.location[0] == 118 && joypad_state == J_B) {
	ld	a, c
	sub	a, #0x76
	ret	NZ
	ld	a, (#_joypad_state)
	sub	a, #0x20
	ret	NZ
;main.c:920: set_bkg_tiles(20, 18, 1, 1, blankmap);
	ld	de, #_blankmap
	push	de
	ld	hl, #0x101
	push	hl
	ld	hl, #0x1214
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;main.c:921: Dialogue(button_click);
	ld	de, #_button_click
	call	_Dialogue
;main.c:922: for (i = 0; i < 80; i++)
	ld	hl, #_i
	ld	(hl), #0x00
00115$:
;main.c:925: backgroundoffset1y++;
	ld	hl, #_backgroundoffset1y
	ld	c, (hl)
	inc	c
;main.c:924: if(i > 9){
	ld	a, #0x09
	ld	hl, #_i
	sub	a, (hl)
	jr	NC, 00104$
;main.c:925: backgroundoffset1y++;
	ld	hl, #_backgroundoffset1y
	ld	(hl), c
	jr	00105$
00104$:
;main.c:928: backgroundoffset1y++;
	ld	hl, #_backgroundoffset1y
	ld	(hl), c
;main.c:929: backgroundoffset2y++;
	ld	hl, #_backgroundoffset2y
	inc	(hl)
00105$:
;c:/gbdk/include/gb/gb.h:1691: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
;c:/gbdk/include/gb/gb.h:1692: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	dec	a
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	ld	(bc), a
;c:/gbdk/include/gb/gb.h:1691: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+4
;c:/gbdk/include/gb/gb.h:1692: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	dec	a
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	ld	(bc), a
;main.c:933: performantdelay(4);
	ld	a, #0x04
	call	_performantdelay
;main.c:922: for (i = 0; i < 80; i++)
	ld	hl, #_i
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x50
	jr	C, 00115$
;main.c:935: MapTwelveStart();
;main.c:937: }
	jp	_MapTwelveStart
;main.c:939: void MapTwelveStart()
;	---------------------------------
; Function MapTwelveStart
; ---------------------------------
_MapTwelveStart::
;main.c:941: backgroundoffset1x = 0;
	ld	hl, #_backgroundoffset1x
	ld	(hl), #0x00
;main.c:942: backgroundoffset2x = 0;
	ld	hl, #_backgroundoffset2x
	ld	(hl), #0x00
;main.c:943: backgroundoffset3x = 0;
	ld	hl, #_backgroundoffset3x
	ld	(hl), #0x00
;main.c:944: backgroundoffset1y = 0;
	ld	hl, #_backgroundoffset1y
	ld	(hl), #0x00
;main.c:945: backgroundoffset2y = 0;
	ld	hl, #_backgroundoffset2y
	ld	(hl), #0x00
;main.c:946: backgroundoffset3y = 0;
	ld	hl, #_backgroundoffset3y
	ld	(hl), #0x00
;main.c:948: map_index = 12;
	ld	hl, #_map_index
	ld	(hl), #0x0c
;main.c:949: walkable_tiles[0] = walkable_tiles[1] = 0x00;
	ld	hl, #(_walkable_tiles + 1)
	ld	(hl), #0x00
	ld	hl, #_walkable_tiles
	ld	(hl), #0x00
;main.c:950: walkable_tiles[2] = 0x35;
	ld	hl, #(_walkable_tiles + 2)
	ld	(hl), #0x35
;main.c:951: set_bkg_tiles(0, 0, 20, 18, maps[map_index]);
	ld	bc, #_maps+0
	ld	hl, #_map_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	push	hl
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:952: player.location[1] = 134;
	ld	hl, #(_player + 1)
	ld	(hl), #0x86
;main.c:954: boss_bat.location[0] = 100;
	ld	hl, #_boss_bat
	ld	(hl), #0x64
;main.c:955: boss_bat.location[1] = 100;
	ld	hl, #(_boss_bat + 1)
	ld	(hl), #0x64
;main.c:956: set_sprite_data(20, 1, fly);
	ld	de, #_fly
	push	de
	ld	hl, #0x114
	push	hl
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x14
;main.c:958: boss_bat.health = 12;
	ld	hl, #(_boss_bat + 2)
	ld	(hl), #0x0c
;main.c:959: }
	ret
;main.c:961: void MapTwelve()
;	---------------------------------
; Function MapTwelve
; ---------------------------------
_MapTwelve::
	add	sp, #-6
;main.c:963: int8_t location_diff_x = player.location[0] - boss_bat.location[0];
	ld	hl, #_boss_bat
	ld	c, (hl)
	ld	a, (#_player + 0)
	sub	a, c
	ldhl	sp,	#3
	ld	(hl), a
;main.c:964: int8_t location_diff_y = boss_bat.location[1] - player.location[1];
	ld	hl, #(_player + 1)
	ld	c, (hl)
	ld	a, (#(_boss_bat + 1) + 0)
	sub	a, c
	ldhl	sp,	#4
	ld	(hl), a
;main.c:966: if(!boss_bat.dead){
	ld	a, (#(_boss_bat + 3) + 0)
	ldhl	sp,#5
	ld	(hl), a
	ld	a, (hl)
	or	a, a
	jp	NZ, 00121$
;main.c:967: if(ii % 80 == 0){
	ld	hl, #_ii
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	bc, #0x0050
	call	__moduint
	ld	e, c
	ld	d, b
	ld	a, d
	or	a, e
	jr	NZ, 00108$
;main.c:968: if(player.location[0] > boss_bat.location[0]) boss_bat.location[0]++;
	ld	hl, #_player
	ld	c, (hl)
	ld	a, (#_boss_bat + 0)
	ldhl	sp,#5
	ld	(hl), a
	ld	a, (hl)
	sub	a, c
	jr	NC, 00102$
	ld	a, (hl)
	inc	a
	ld	(#_boss_bat),a
	jr	00103$
00102$:
;main.c:969: else boss_bat.location[0]--;
	ldhl	sp,	#5
	ld	a, (hl)
	dec	a
	ld	(#_boss_bat),a
00103$:
;main.c:970: if(player.location[1] > boss_bat.location[1]) boss_bat.location[1]++;
	ld	bc, #_player+1
	ld	hl, #_boss_bat + 1
	ld	a, (bc)
	ld	b, a
	ld	c, (hl)
	ld	a, c
	sub	a, b
	jr	NC, 00105$
	inc	c
	ld	(hl), c
	jr	00106$
00105$:
;main.c:971: else boss_bat.location[1]--;
	dec	c
	ld	(hl), c
00106$:
;main.c:973: move_sprite(3, boss_bat.location[0], boss_bat.location[1]);
	ld	c, (hl)
	ld	hl, #_boss_bat
	ld	b, (hl)
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 12)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;main.c:973: move_sprite(3, boss_bat.location[0], boss_bat.location[1]);
00108$:
;main.c:976: if(location_diff_x < 8 && location_diff_x > -8 && location_diff_y < 16 && location_diff_y > -8){
	ldhl	sp,	#3
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x88
	jr	NC, 00110$
	ld	e, (hl)
	ld	a,#0xf8
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00192$
	bit	7, d
	jr	NZ, 00193$
	cp	a, a
	jr	00193$
00192$:
	bit	7, d
	jr	Z, 00193$
	scf
00193$:
	jr	NC, 00110$
	ldhl	sp,	#4
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x90
	jr	NC, 00110$
	ld	e, (hl)
	ld	a,#0xf8
	ld	d,a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00194$
	bit	7, d
	jr	NZ, 00195$
	cp	a, a
	jr	00195$
00194$:
	bit	7, d
	jr	Z, 00195$
	scf
00195$:
	jr	NC, 00110$
;main.c:977: ResetGameBoy();
	call	_ResetGameBoy
00110$:
;main.c:979: if(bullet.location[0] == boss_bat.location[0] && bullet.location[1] >= boss_bat.location[1] && bullet.location[1] <= boss_bat.location[1] + 8){
	ld	a, (#(_bullet + 4) + 0)
	ld	hl, #_boss_bat
	ld	c, (hl)
	sub	a, c
	jr	NZ, 00121$
	ld	a, (#(_bullet + 5) + 0)
	ldhl	sp,	#5
	ld	(hl), a
	ld	a, (#(_boss_bat + 1) + 0)
	ldhl	sp,	#4
	ld	(hl), a
	ldhl	sp,	#5
	ld	a, (hl-)
	sub	a, (hl)
	jr	C, 00121$
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), #0x00
	pop	de
	push	de
	ld	hl, #0x0008
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl+), a
	inc	hl
	ld	a, (hl-)
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,	#2
	ld	e, l
	ld	d, h
	ldhl	sp,	#4
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00198$
	bit	7, d
	jr	NZ, 00199$
	cp	a, a
	jr	00199$
00198$:
	bit	7, d
	jr	Z, 00199$
	scf
00199$:
	jr	C, 00121$
;main.c:980: boss_bat.health--;
	ld	a, (#(_boss_bat + 2) + 0)
	dec	a
	ldhl	sp,	#5
	ld	(hl), a
	ld	de, #(_boss_bat + 2)
	ld	a, (hl)
	ld	(de), a
;main.c:981: bullet.location[0] = 200;
	ld	hl, #(_bullet + 4)
	ld	(hl), #0xc8
;main.c:982: if(boss_bat.health < 1) {
	ldhl	sp,	#5
	ld	a, (hl)
	sub	a, #0x01
	jr	NC, 00121$
;main.c:983: boss_bat.dead = TRUE;
	ld	hl, #(_boss_bat + 3)
	ld	(hl), #0x01
;main.c:984: explosion_sprite_index = 3;
	ld	hl, #_explosion_sprite_index
	ld	(hl), #0x03
;main.c:985: walkable_tiles[1] = 0x14;
	ld	hl, #(_walkable_tiles + 1)
	ld	(hl), #0x14
00121$:
;main.c:990: if(player.location[0] > 159){
	ld	bc, #_player+0
	ld	a, (bc)
	ld	e, a
	ld	a, #0x9f
	sub	a, e
	jr	NC, 00125$
;main.c:991: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
;main.c:992: player.location[0] = 3;
	ld	a, #0x03
	ld	(bc), a
;main.c:993: printf(" \n \n \n \n \n \n \n      fuck you");
	ld	de, #___str_0
	push	de
	call	_printf
	pop	hl
00125$:
;main.c:995: }
	add	sp, #6
	ret
___str_0:
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii "      fuck you"
	.db 0x00
;main.c:997: void fadeout(){
;	---------------------------------
; Function fadeout
; ---------------------------------
_fadeout::
;main.c:998: for(i=0;i<4;i++){
	ld	hl, #_i
	ld	(hl), #0x00
00107$:
;main.c:999: switch(i){
	ld	a, (#_i)
	or	a, a
	jr	Z, 00101$
	ld	a, (#_i)
	dec	a
	jr	Z, 00102$
	ld	a, (#_i)
	sub	a, #0x02
	jr	Z, 00103$
	ld	a, (#_i)
	sub	a, #0x03
	jr	Z, 00104$
	jr	00105$
;main.c:1000: case 0:
00101$:
;main.c:1001: BGP_REG = 0xE4;
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
;main.c:1002: break;
	jr	00105$
;main.c:1003: case 1:
00102$:
;main.c:1004: BGP_REG = 0xF9;
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
;main.c:1005: break;
	jr	00105$
;main.c:1006: case 2:
00103$:
;main.c:1007: BGP_REG = 0xFE;
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
;main.c:1008: break;
	jr	00105$
;main.c:1009: case 3:
00104$:
;main.c:1010: BGP_REG = 0xFF;	
	ld	a, #0xff
	ldh	(_BGP_REG + 0), a
;main.c:1012: }
00105$:
;main.c:1013: wait_vbl_done();
	call	_wait_vbl_done
;main.c:998: for(i=0;i<4;i++){
	ld	hl, #_i
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x04
	jr	C, 00107$
;main.c:1015: }
	ret
;main.c:1017: void fadein(){
;	---------------------------------
; Function fadein
; ---------------------------------
_fadein::
;main.c:1018: for(i=0;i<3;i++){
	ld	hl, #_i
	ld	(hl), #0x00
00106$:
;main.c:1019: switch(i){
	ld	a, (#_i)
	or	a, a
	jr	Z, 00101$
	ld	a, (#_i)
	dec	a
	jr	Z, 00102$
	ld	a, (#_i)
	sub	a, #0x02
	jr	Z, 00103$
	jr	00104$
;main.c:1020: case 0:
00101$:
;main.c:1021: BGP_REG = 0xFE;
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
;main.c:1022: break;
	jr	00104$
;main.c:1023: case 1:
00102$:
;main.c:1024: BGP_REG = 0xF9;
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
;main.c:1025: break;
	jr	00104$
;main.c:1026: case 2:
00103$:
;main.c:1027: BGP_REG = 0xE4;
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
;main.c:1029: }
00104$:
;main.c:1030: wait_vbl_done();
	call	_wait_vbl_done
;main.c:1018: for(i=0;i<3;i++){
	ld	hl, #_i
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x03
	jr	C, 00106$
;main.c:1032: }
	ret
;main.c:1034: void performantdelay(uint8_t numloops)
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
	ld	c, a
;main.c:1037: for(nums = 0; nums < numloops; nums++){
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
;main.c:1038: wait_vbl_done();
	call	_wait_vbl_done
;main.c:1037: for(nums = 0; nums < numloops; nums++){
	inc	b
;main.c:1040: }
	jr	00103$
;main.c:1042: void SnailManager(uint8_t snail_index, uint8_t sprite_index)
;	---------------------------------
; Function SnailManager
; ---------------------------------
_SnailManager::
	ld	c, a
	ld	b, e
;main.c:1044: SnailMovement(snail_index, sprite_index);
	push	bc
	ld	e, b
	ld	a, c
	call	_SnailMovement
	pop	bc
;main.c:1045: SnailCollision(snail_index, sprite_index);
	ld	e, b
	ld	a, c
;main.c:1046: }
	jp	_SnailCollision
;main.c:1048: void SnailMovement(uint8_t snail_index, uint8_t sprite_index)
;	---------------------------------
; Function SnailMovement
; ---------------------------------
_SnailMovement::
	add	sp, #-9
	ld	c, a
	ldhl	sp,	#8
	ld	(hl), e
;main.c:1050: if(snail[snail_index].dead || ii % 18 != 0) {
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
	ld	de, #_snail
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	add	hl, de
	inc	sp
	inc	sp
	ld	e, l
	ld	d, h
	push	de
	ld	hl, #0x0004
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(hl), a
	ld	a, (hl)
	or	a, a
	jp	NZ,00117$
	ld	a, (#_ii)
	ldhl	sp,	#6
	ld	(hl), a
	ld	a, (#_ii + 1)
	ldhl	sp,	#7
	ld	(hl-), a
	ld	bc, #0x0012
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	__moduint
	ldhl	sp,	#6
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ldhl	sp,	#7
	ld	a, (hl-)
	or	a, (hl)
;main.c:1051: return;
	jp	NZ,00117$
;c:/gbdk/include/gb/gb.h:1658: return shadow_OAM[nb].prop;
	ldhl	sp,	#8
	ld	a, (hl-)
	dec	hl
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	ldhl	sp,	#7
	ld	a, (hl)
	ldhl	sp,	#3
	ld	(hl), a
	ld	a, #0x02
00139$:
	ldhl	sp,	#2
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00139$
	ld	de, #_shadow_OAM
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0003
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;main.c:1054: if(get_sprite_prop(sprite_index) == 0) snail[snail_index].location[0]++;
	pop	de
	push	de
	push	af
	ld	a, (de)
	ld	c, a
	pop	af
	or	a, a
	jr	NZ, 00105$
	inc	c
	pop	hl
	push	hl
	ld	(hl), c
	jr	00106$
00105$:
;main.c:1055: else snail[snail_index].location[0]--;
	dec	c
	pop	hl
	push	hl
	ld	(hl), c
00106$:
;main.c:1057: if(snail[snail_index].location[0] < snail[snail_index].move_location[0]) set_sprite_prop(sprite_index, get_sprite_prop(sprite_index) & ~S_FLIPX);
	pop	de
	push	de
	ld	hl, #0x0002
	add	hl, de
	ld	b, l
	ld	a, h
;main.c:1054: if(get_sprite_prop(sprite_index) == 0) snail[snail_index].location[0]++;
	pop	de
	push	de
	push	af
	ld	a, (de)
	ld	c, a
	pop	af
;main.c:1057: if(snail[snail_index].location[0] < snail[snail_index].move_location[0]) set_sprite_prop(sprite_index, get_sprite_prop(sprite_index) & ~S_FLIPX);
	ld	l, b
	ld	h, a
	ld	b, (hl)
	ld	a, c
	sub	a, b
	jr	NC, 00110$
;c:/gbdk/include/gb/gb.h:1658: return shadow_OAM[nb].prop;
	ld	bc, #_shadow_OAM+0
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	inc	hl
	inc	hl
	inc	hl
	ld	c, l
	ld	b, h
	ld	a, (bc)
;main.c:1057: if(snail[snail_index].location[0] < snail[snail_index].move_location[0]) set_sprite_prop(sprite_index, get_sprite_prop(sprite_index) & ~S_FLIPX);
	ld	c, a
	res	5, c
;c:/gbdk/include/gb/gb.h:1648: shadow_OAM[nb].prop=prop;
	ld	de, #_shadow_OAM
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	inc	hl
	inc	hl
	inc	hl
	ld	e, l
	ld	d, h
	ld	a, c
	ld	(de), a
;main.c:1057: if(snail[snail_index].location[0] < snail[snail_index].move_location[0]) set_sprite_prop(sprite_index, get_sprite_prop(sprite_index) & ~S_FLIPX);
	jr	00111$
00110$:
;main.c:1058: else if(snail[snail_index].location[0] > snail[snail_index].move_location[1]) set_sprite_prop(sprite_index, S_FLIPX);
	pop	de
	push	de
	inc	de
	inc	de
	inc	de
	ld	a, (de)
	sub	a, c
	jr	NC, 00111$
;c:/gbdk/include/gb/gb.h:1648: shadow_OAM[nb].prop=prop;
	ld	de, #_shadow_OAM
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0x20
;main.c:1058: else if(snail[snail_index].location[0] > snail[snail_index].move_location[1]) set_sprite_prop(sprite_index, S_FLIPX);
00111$:
;main.c:1059: move_sprite(sprite_index, snail[snail_index].location[0], snail[snail_index].location[1]);
	pop	bc
	push	bc
	inc	bc
	ld	a, (bc)
	ld	c, a
	pop	de
	push	de
	ld	a, (de)
	ld	b, a
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	de, #_shadow_OAM
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;main.c:1059: move_sprite(sprite_index, snail[snail_index].location[0], snail[snail_index].location[1]);
00117$:
;main.c:1060: }
	add	sp, #9
	ret
;main.c:1062: void SnailCollision(uint8_t snail_index, uint8_t sprite_index)
;	---------------------------------
; Function SnailCollision
; ---------------------------------
_SnailCollision::
	add	sp, #-11
	ld	c, a
	ldhl	sp,	#10
	ld	(hl), e
;main.c:1064: if(snail[snail_index].dead) return;
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_snail
	add	hl,bc
	inc	sp
	inc	sp
	ld	e, l
	ld	d, h
	push	de
	ld	hl, #0x0004
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#9
	ld	(hl), a
	or	a, a
	jp	NZ,00113$
;main.c:1066: if(player.location[1] > snail[snail_index].location[1] - 14 && ((player.left >= snail[snail_index].location[0] && player.left <= snail[snail_index].location[0] + 8) || (player.right >= snail[snail_index].location[0] && player.right <= snail[snail_index].location[0] + 8))){
	pop	de
	push	de
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, #0x00
	add	a, #0xf2
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	a, (#(_player + 1) + 0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, h
	ld	d, b
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	bit	7, e
	jr	Z, 00150$
	bit	7, d
	jr	NZ, 00151$
	cp	a, a
	jr	00151$
00150$:
	bit	7, d
	jr	Z, 00151$
	scf
00151$:
	jr	NC, 00104$
	ld	hl, #(_player + 2)
	ld	c, (hl)
	pop	de
	push	de
	ld	a, (de)
	ld	b, a
	ld	e, b
	ld	d, #0x00
	ld	hl, #0x0008
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
	ld	a, c
	sub	a, b
	jr	C, 00107$
	inc	hl
	ld	a, c
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,	#6
	ld	e, l
	ld	d, h
	ldhl	sp,	#8
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00152$
	bit	7, d
	jr	NZ, 00153$
	cp	a, a
	jr	00153$
00152$:
	bit	7, d
	jr	Z, 00153$
	scf
00153$:
	jr	NC, 00103$
00107$:
	ld	a, (#(_player + 3) + 0)
	cp	a, b
	jr	C, 00104$
	ld	c, a
	ld	b, #0x00
	ldhl	sp,	#6
	ld	a, (hl+)
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	ld	d, (hl)
	ld	a, b
	bit	7,a
	jr	Z, 00154$
	bit	7, d
	jr	NZ, 00155$
	cp	a, a
	jr	00155$
00154$:
	bit	7, d
	jr	Z, 00155$
	scf
00155$:
	jr	C, 00104$
00103$:
;main.c:1067: ResetGameBoy();
	call	_ResetGameBoy
00104$:
;main.c:1069: if(bullet.location[0] == snail[snail_index].location[0] && bullet.location[1] >= snail[snail_index].location[1] && bullet.location[1] <= snail[snail_index].location[1] + 8){
	ld	a, (#(_bullet + 4) + 0)
	pop	de
	push	de
	push	af
	ld	a, (de)
	ld	c, a
	pop	af
	sub	a, c
	jr	NZ, 00113$
	ld	hl, #(_bullet + 5)
	ld	c, (hl)
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	ld	a, c
	sub	a, b
	jr	C, 00113$
	ld	d, #0x00
	ld	e, b
	ld	hl, #0x0008
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl+), a
	ld	a, c
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,	#6
	ld	e, l
	ld	d, h
	ldhl	sp,	#8
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00158$
	bit	7, d
	jr	NZ, 00159$
	cp	a, a
	jr	00159$
00158$:
	bit	7, d
	jr	Z, 00159$
	scf
00159$:
	jr	C, 00113$
;main.c:1070: snail[snail_index].dead = TRUE;
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
;main.c:1071: bullet.location[0] = 200;
	ld	hl, #(_bullet + 4)
	ld	(hl), #0xc8
;main.c:1072: explosion_sprite_index = sprite_index;
	ldhl	sp,	#10
	ld	a, (hl)
	ld	(#_explosion_sprite_index),a
00113$:
;main.c:1074: }
	add	sp, #11
	ret
;main.c:1076: void KillerManager(uint8_t killer_index, uint8_t sprite_index, UBYTE looking_right)
;	---------------------------------
; Function KillerManager
; ---------------------------------
_KillerManager::
	add	sp, #-10
	ldhl	sp,	#9
	ld	(hl-), a
	ld	(hl), e
;main.c:1080: if(ii % 700 == 0 && !killer[killer_index].dead){
	ld	a, (#_ii)
	ldhl	sp,	#6
	ld	(hl), a
	ld	a, (#_ii + 1)
	ldhl	sp,	#7
	ld	(hl+), a
	inc	hl
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ld	bc, #0x02bc
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
;main.c:1079: if(looking_right){
	call	__moduint
	ldhl	sp,	#6
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ldhl	sp,	#12
	ld	a, (hl)
	or	a, a
	jr	Z, 00112$
;main.c:1080: if(ii % 700 == 0 && !killer[killer_index].dead){
	ldhl	sp,	#7
	ld	a, (hl-)
	or	a, (hl)
	jr	NZ, 00102$
	ld	de, #_killer
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#5
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#4
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#7
	ld	(hl), a
	ld	a, (hl)
	or	a, a
	jr	NZ, 00102$
;main.c:1081: bullet_enemy.location[0] = killer[killer_index].location[0] + 8;
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (de)
	ld	(hl), a
	ld	a, (hl)
	add	a, #0x08
	ld	(#(_bullet_enemy + 4)),a
;main.c:1082: bullet_enemy.location[1] = killer[killer_index].location[1] + 7;
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#5
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#4
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#7
	ld	(hl), a
	ld	a, (hl)
	add	a, #0x07
	ld	(#(_bullet_enemy + 5)),a
00102$:
;main.c:1085: if(bullet_enemy.location[0] < 168) {
	ld	bc, #_bullet_enemy+4
	ld	a, (bc)
	cp	a, #0xa8
	jr	NC, 00113$
;main.c:1086: bullet_enemy.location[0]++;
	inc	a
	ld	(bc), a
	jr	00113$
00112$:
;main.c:1090: if(ii % 700 == 0 && !killer[killer_index].dead){
	ldhl	sp,	#7
	ld	a, (hl-)
	or	a, (hl)
	jr	NZ, 00107$
	ld	de, #_killer
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(hl), a
	ld	a, (hl)
	or	a, a
	jr	NZ, 00107$
;main.c:1091: bullet_enemy.location[0] = killer[killer_index].location[0];
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	ld	(hl), a
	ld	de, #(_bullet_enemy + 4)
;main.c:1092: bullet_enemy.location[1] = killer[killer_index].location[1] + 7;
	ld	a, (hl-)
	dec	hl
	dec	hl
	ld	(de), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(hl), a
	ld	a, (hl)
	add	a, #0x07
	ld	(#(_bullet_enemy + 5)),a
00107$:
;main.c:1095: if(bullet_enemy.location[0] > 0) {
	ld	bc, #_bullet_enemy+4
	ld	a, (bc)
	or	a, a
	jr	Z, 00113$
;main.c:1096: bullet_enemy.location[0]--;
	dec	a
	ld	(bc), a
00113$:
;main.c:1099: move_sprite(19, bullet_enemy.location[0], bullet_enemy.location[1]);
	ld	hl, #(_bullet_enemy + 5)
	ld	b, (hl)
	ld	hl, #(_bullet_enemy + 4)
	ld	c, (hl)
;c:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 76)
;c:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;c:/gbdk/include/gb/gb.h:1613: return shadow_OAM[nb].tile;
	ld	bc, #_shadow_OAM+0
	ldhl	sp,	#8
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	a, (hl)
;main.c:1102: if(get_sprite_tile(sprite_index) == 127) explosion_sprite_index = sprite_index + 1;
	sub	a, #0x7f
	jr	NZ, 00115$
	ldhl	sp,	#8
	ld	a, (hl)
	inc	a
	ld	(#_explosion_sprite_index),a
00115$:
;main.c:1103: if(killer[killer_index].dead) return;
	ldhl	sp,	#9
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_killer
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	inc	sp
	inc	sp
	ld	e, l
	ld	d, h
	push	de
	ld	a, (de)
	ldhl	sp,	#7
	ld	(hl), a
	ld	a, (hl)
	or	a, a
	jp	NZ,00135$
;main.c:1106: if((bullet_enemy.location[0] >= player.left && bullet_enemy.location[0] <= player.right && bullet_enemy.location[1] >= player.up && bullet_enemy.location[1] <= player.down && !ducking)
	ld	hl, #_player + 2
	ld	b, (hl)
	ld	hl, #(_bullet_enemy + 4)
	ld	c, (hl)
	ld	a, c
	sub	a, b
	ld	a, #0x00
	rla
	ldhl	sp,	#6
	ld	(hl), a
	bit	0, (hl)
	jr	NZ, 00128$
	ld	hl, #(_player + 3)
	ld	b, (hl)
	ld	a, b
	sub	a, c
	jr	C, 00128$
	ld	a, (#(_player + 4) + 0)
	ldhl	sp,	#7
	ld	(hl), a
	ld	hl, #(_bullet_enemy + 5)
	ld	b, (hl)
	ld	a, b
	ldhl	sp,	#7
	sub	a, (hl)
	jr	C, 00128$
;	spillPairReg hl
	ld	a, (#(_player + 5) + 0)
	sub	a, b
	jr	C, 00128$
	ld	a, (#_ducking)
	or	a, a
	jr	Z, 00118$
00128$:
;main.c:1107: || (bullet_enemy.location[0] >= player.left && bullet_enemy.location[0] <= player.right && bullet_enemy.location[1] >= player.up + 8 && bullet_enemy.location[1] <= player.down && ducking)){
	ldhl	sp,	#6
	bit	0, (hl)
	jr	NZ, 00119$
	ld	hl, #(_player + 3)
	ld	b, (hl)
	ld	a, b
	sub	a, c
	jr	C, 00119$
	ld	a, (#(_player + 4) + 0)
	ld	d, #0x00
	ld	e, a
	ld	hl, #0x0008
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
	ld	hl, #(_bullet_enemy + 5)
	ld	c, (hl)
	ldhl	sp,	#6
	ld	a, c
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,	#6
	ld	e, l
	ld	d, h
	ldhl	sp,	#4
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00239$
	bit	7, d
	jr	NZ, 00240$
	cp	a, a
	jr	00240$
00239$:
	bit	7, d
	jr	Z, 00240$
	scf
00240$:
	jr	C, 00119$
	ld	hl, #(_player + 5)
	ld	b, (hl)
	ld	a, b
	sub	a, c
	jr	C, 00119$
	ld	a, (#_ducking)
	or	a, a
	jr	Z, 00119$
00118$:
;main.c:1108: ResetGameBoy();
	call	_ResetGameBoy
00119$:
;main.c:1112: if(bullet.location[0] == killer[killer_index].location[0] && bullet.location[1] <= killer[killer_index].location[1] + 16 && bullet.location[1] >= killer[killer_index].location[1]){ 
	ld	a, (#(_bullet + 4) + 0)
	ldhl	sp,#2
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ld	c, a
	pop	af
	sub	a, c
	jr	NZ, 00135$
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl-)
	ld	b, a
	inc	bc
	ld	a, (bc)
	ld	(hl), a
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x0010
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#5
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#4
	ld	(hl), a
	ld	a, (#(_bullet + 5) + 0)
	ldhl	sp,#5
	ld	(hl), a
	ld	a, (hl+)
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,	#3
	ld	e, l
	ld	d, h
	ldhl	sp,	#6
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z, 00243$
	bit	7, d
	jr	NZ, 00244$
	cp	a, a
	jr	00244$
00243$:
	bit	7, d
	jr	Z, 00244$
	scf
00244$:
	jr	C, 00135$
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#2
	sub	a, (hl)
	jr	C, 00135$
;main.c:1113: explosion_sprite_index = sprite_index;
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(#_explosion_sprite_index),a
;main.c:1114: killer[killer_index].dead = TRUE;
	pop	hl
	ld	(hl), #0x01
	push	hl
00135$:
;main.c:1116: }
	add	sp, #10
	pop	hl
	inc	sp
	jp	(hl)
;main.c:1118: void DeathAnimation()
;	---------------------------------
; Function DeathAnimation
; ---------------------------------
_DeathAnimation::
;main.c:1120: if(explosion_sprite_index > 20 || ii % 9 != 0) return;
	ld	a, #0x14
	ld	hl, #_explosion_sprite_index
	sub	a, (hl)
	ret	C
	ld	hl, #_ii
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	bc, #0x0009
	call	__moduint
	ld	a, b
	or	a, c
	ret	NZ
;main.c:1122: if(get_sprite_tile(explosion_sprite_index) < 123){
	ld	hl, #_explosion_sprite_index
;c:/gbdk/include/gb/gb.h:1613: return shadow_OAM[nb].tile;
	ld	l, (hl)
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	a, (hl)
;main.c:1122: if(get_sprite_tile(explosion_sprite_index) < 123){
	ld	hl, #_explosion_sprite_index
	ld	e, (hl)
	sub	a, #0x7b
	jr	NC, 00116$
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	bc, #_shadow_OAM+0
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x7b
;main.c:1124: return;
	ret
00116$:
;c:/gbdk/include/gb/gb.h:1613: return shadow_OAM[nb].tile;
	ld	bc, #_shadow_OAM+0
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	a, (hl)
;main.c:1122: if(get_sprite_tile(explosion_sprite_index) < 123){
	ld	hl, #_explosion_sprite_index
	ld	e, (hl)
;main.c:1126: else if(get_sprite_tile(explosion_sprite_index) == 123){
	sub	a, #0x7b
	jr	NZ, 00113$
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	bc, #_shadow_OAM+0
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x7c
;main.c:1128: return;
	ret
00113$:
;c:/gbdk/include/gb/gb.h:1613: return shadow_OAM[nb].tile;
	ld	bc, #_shadow_OAM+0
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	a, (hl)
;main.c:1122: if(get_sprite_tile(explosion_sprite_index) < 123){
	ld	hl, #_explosion_sprite_index
	ld	e, (hl)
;main.c:1130: else if(get_sprite_tile(explosion_sprite_index) == 124){
	sub	a, #0x7c
	jr	NZ, 00110$
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	bc, #_shadow_OAM+0
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x7d
;main.c:1132: return;
	ret
00110$:
;c:/gbdk/include/gb/gb.h:1613: return shadow_OAM[nb].tile;
	ld	bc, #_shadow_OAM+0
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	a, (hl)
;main.c:1122: if(get_sprite_tile(explosion_sprite_index) < 123){
	ld	hl, #_explosion_sprite_index
	ld	e, (hl)
;main.c:1134: else if(get_sprite_tile(explosion_sprite_index) == 125){
	sub	a, #0x7d
	jr	NZ, 00107$
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	bc, #_shadow_OAM+0
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x7e
;main.c:1136: return;
	ret
00107$:
;c:/gbdk/include/gb/gb.h:1613: return shadow_OAM[nb].tile;
	ld	bc, #_shadow_OAM+0
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	a, (hl)
;main.c:1138: else if(get_sprite_tile(explosion_sprite_index) == 126){
	sub	a, #0x7e
	ret	NZ
;main.c:1139: set_sprite_tile(explosion_sprite_index, 127);
	ld	hl, #_explosion_sprite_index
	ld	e, (hl)
;c:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	bc, #_shadow_OAM+0
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x7f
;main.c:1140: explosion_sprite_index = 21;
	ld	hl, #_explosion_sprite_index
	ld	(hl), #0x15
;main.c:1141: return;
;main.c:1143: }
	ret
;main.c:1145: void Dialogue(unsigned char dialogue[360])
;	---------------------------------
; Function Dialogue
; ---------------------------------
_Dialogue::
;main.c:1148: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
;main.c:1149: SHOW_WIN;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x20
	ldh	(_LCDC_REG + 0), a
;main.c:1151: set_win_tiles(0, 0, 20, 18, dialogue);
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_win_tiles
	add	sp, #6
;main.c:1153: waitpadup();
	call	_waitpadup
;main.c:1155: waitpad(J_B);
	ld	a, #0x20
	call	_waitpad
;main.c:1157: waitpadup();
	call	_waitpadup
;main.c:1159: HIDE_WIN;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xdf
	ldh	(_LCDC_REG + 0), a
;main.c:1160: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;main.c:1161: }
	ret
;main.c:1163: void interruptLCD()
;	---------------------------------
; Function interruptLCD
; ---------------------------------
_interruptLCD::
;main.c:1165: switch (LYC_REG)
	ldh	a, (_LYC_REG + 0)
	or	a, a
	jr	Z, 00101$
	cp	a, #0x35
	jr	Z, 00102$
	sub	a, #0x6c
	jr	Z, 00103$
	ret
;main.c:1167: case 0x00:
00101$:
;main.c:1168: move_bkg(backgroundoffset1x,backgroundoffset1y);
	ld	hl, #_backgroundoffset1y
	ld	c, (hl)
	ld	a, (#_backgroundoffset1x)
	ldh	(_SCX_REG + 0), a
;c:/gbdk/include/gb/gb.h:1208: SCX_REG=x, SCY_REG=y;
	ld	a, c
	ldh	(_SCY_REG + 0), a
;main.c:1169: LYC_REG = 0x35;
	ld	a, #0x35
	ldh	(_LYC_REG + 0), a
;main.c:1170: break;
	ret
;main.c:1171: case 0x35:
00102$:
;main.c:1172: move_bkg(backgroundoffset2x,backgroundoffset2y);
	ld	hl, #_backgroundoffset2y
	ld	c, (hl)
	ld	a, (#_backgroundoffset2x)
	ldh	(_SCX_REG + 0), a
;c:/gbdk/include/gb/gb.h:1208: SCX_REG=x, SCY_REG=y;
	ld	a, c
	ldh	(_SCY_REG + 0), a
;main.c:1173: LYC_REG = 0x6c;
	ld	a, #0x6c
	ldh	(_LYC_REG + 0), a
;main.c:1174: break;
	ret
;main.c:1175: case 0x6c:
00103$:
;main.c:1176: move_bkg(backgroundoffset3x,backgroundoffset3y);
	ld	hl, #_backgroundoffset3y
	ld	c, (hl)
	ld	a, (#_backgroundoffset3x)
	ldh	(_SCX_REG + 0), a
;c:/gbdk/include/gb/gb.h:1208: SCX_REG=x, SCY_REG=y;
	ld	a, c
	ldh	(_SCY_REG + 0), a
;main.c:1177: LYC_REG = 0x00;
	xor	a, a
	ldh	(_LYC_REG + 0), a
;main.c:1179: }
;main.c:1180: }
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__characters:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x6c	; 108	'l'
	.db #0x6c	; 108	'l'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x62	; 98	'b'
	.db #0x62	; 98	'b'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x4c	; 76	'L'
	.db #0x4c	; 76	'L'
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x3a	; 58
	.db #0x3a	; 58
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
__xinit__guard_dialogue:
	.db #0xa9	; 169
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xae	; 174
	.db #0xaa	; 170
	.db #0x90	; 144
	.db #0x9e	; 158
	.db #0x97	; 151
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x92	; 146
	.db #0x9c	; 156
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x92	; 146
	.db #0x97	; 151
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x9d	; 157
	.db #0x91	; 145
	.db #0x8e	; 142
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x9b	; 155
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x96	; 150
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x8a	; 138
	.db #0x91	; 145
	.db #0x8e	; 142
	.db #0x8a	; 138
	.db #0x8d	; 141
	.db #0xa5	; 165
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x96	; 150
	.db #0x8a	; 138
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0x8e	; 142
	.db #0x9b	; 155
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x8a	; 138
	.db #0x9c	; 156
	.db #0x9c	; 156
	.db #0x8a	; 138
	.db #0x9c	; 156
	.db #0x9c	; 156
	.db #0x92	; 146
	.db #0x97	; 151
	.db #0xa4	; 164
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xab	; 171
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xb0	; 176
__xinit__fly:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__gunless_warning:
	.db #0xa9	; 169
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xae	; 174
	.db #0xaa	; 170
	.db #0x92	; 146
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x96	; 150
	.db #0x9e	; 158
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x90	; 144
	.db #0x8e	; 142
	.db #0x9d	; 157
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x9d	; 157
	.db #0x91	; 145
	.db #0x8e	; 142
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x90	; 144
	.db #0x9e	; 158
	.db #0x97	; 151
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x8f	; 143
	.db #0x92	; 146
	.db #0x9b	; 155
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xab	; 171
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xb0	; 176
__xinit__map_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xc3	; 195
	.db #0xa5	; 165
	.db #0xc3	; 195
	.db #0xa5	; 165
	.db #0xc3	; 195
	.db #0xbd	; 189
	.db #0xc3	; 195
	.db #0x81	; 129
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x5b	; 91
	.db #0x39	; 57	'9'
	.db #0x8c	; 140
	.db #0x42	; 66	'B'
	.db #0x33	; 51	'3'
	.db #0x88	; 136
	.db #0x4d	; 77	'M'
	.db #0x22	; 34
	.db #0xd6	; 214
	.db #0x49	; 73	'I'
	.db #0x67	; 103	'g'
	.db #0x12	; 18
	.db #0xa9	; 169
	.db #0x54	; 84	'T'
	.db #0x4d	; 77	'M'
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xa2	; 162
	.db #0x28	; 40
	.db #0x14	; 20
	.db #0x45	; 69	'E'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xe3	; 227
	.db #0x9d	; 157
	.db #0xf3	; 243
	.db #0x8d	; 141
	.db #0xeb	; 235
	.db #0x95	; 149
	.db #0xdf	; 223
	.db #0xa1	; 161
	.db #0xbf	; 191
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xcf	; 207
	.db #0xb1	; 177
	.db #0xbf	; 191
	.db #0xc1	; 193
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xc1	; 193
	.db #0xcf	; 207
	.db #0xb1	; 177
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xcf	; 207
	.db #0xf0	; 240
	.db #0xcf	; 207
	.db #0xf0	; 240
	.db #0xcc	; 204
	.db #0xf0	; 240
	.db #0xcc	; 204
	.db #0xf0	; 240
	.db #0xcc	; 204
	.db #0xf0	; 240
	.db #0xcc	; 204
	.db #0xf0	; 240
	.db #0xcc	; 204
	.db #0xf0	; 240
	.db #0xcc	; 204
	.db #0xf0	; 240
	.db #0xcc	; 204
	.db #0xf0	; 240
	.db #0xcc	; 204
	.db #0xf0	; 240
	.db #0xcc	; 204
	.db #0xf0	; 240
	.db #0xcc	; 204
	.db #0xf0	; 240
	.db #0xcc	; 204
	.db #0xf0	; 240
	.db #0xcc	; 204
	.db #0xf0	; 240
	.db #0xcf	; 207
	.db #0xf0	; 240
	.db #0xcf	; 207
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0xf3	; 243
	.db #0x0f	; 15
	.db #0xf3	; 243
	.db #0x0f	; 15
	.db #0x33	; 51	'3'
	.db #0x0f	; 15
	.db #0x33	; 51	'3'
	.db #0x0f	; 15
	.db #0x33	; 51	'3'
	.db #0x0f	; 15
	.db #0x33	; 51	'3'
	.db #0x0f	; 15
	.db #0x33	; 51	'3'
	.db #0x0f	; 15
	.db #0x33	; 51	'3'
	.db #0x0f	; 15
	.db #0x33	; 51	'3'
	.db #0x0f	; 15
	.db #0x33	; 51	'3'
	.db #0x0f	; 15
	.db #0x33	; 51	'3'
	.db #0x0f	; 15
	.db #0x33	; 51	'3'
	.db #0x0f	; 15
	.db #0x33	; 51	'3'
	.db #0x0f	; 15
	.db #0x33	; 51	'3'
	.db #0x0f	; 15
	.db #0xf3	; 243
	.db #0x0f	; 15
	.db #0xf3	; 243
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x87	; 135
	.db #0xff	; 255
	.db #0x8f	; 143
	.db #0xf8	; 248
	.db #0x9c	; 156
	.db #0xf3	; 243
	.db #0xbc	; 188
	.db #0xe3	; 227
	.db #0x9c	; 156
	.db #0xf3	; 243
	.db #0x8f	; 143
	.db #0xf8	; 248
	.db #0x87	; 135
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x21	; 33
	.db #0x3f	; 63
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x14	; 20
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0xc3	; 195
	.db #0x42	; 66	'B'
	.db #0xc3	; 195
	.db #0x24	; 36
	.db #0xe7	; 231
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x0c	; 12
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0xe1	; 225
	.db #0xff	; 255
	.db #0xf1	; 241
	.db #0x1f	; 31
	.db #0x39	; 57	'9'
	.db #0xcf	; 207
	.db #0x3d	; 61
	.db #0xc7	; 199
	.db #0x39	; 57	'9'
	.db #0xcf	; 207
	.db #0xf1	; 241
	.db #0x1f	; 31
	.db #0xe1	; 225
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfc	; 252
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0x28	; 40
	.db #0x38	; 56	'8'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xfb	; 251
	.db #0x04	; 4
	.db #0xfb	; 251
	.db #0x04	; 4
	.db #0xfb	; 251
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0xd0	; 208
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x87	; 135
	.db #0x80	; 128
	.db #0x8f	; 143
	.db #0x80	; 128
	.db #0x9f	; 159
	.db #0x8c	; 140
	.db #0xb3	; 179
	.db #0x8c	; 140
	.db #0xb3	; 179
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x87	; 135
	.db #0x98	; 152
	.db #0x80	; 128
	.db #0x9f	; 159
	.db #0x80	; 128
	.db #0x87	; 135
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x9f	; 159
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x0c	; 12
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0xc3	; 195
	.db #0x0c	; 12
	.db #0xe3	; 227
	.db #0x0c	; 12
	.db #0xf3	; 243
	.db #0x64	; 100	'd'
	.db #0x9b	; 155
	.db #0x67	; 103	'g'
	.db #0x98	; 152
	.db #0x03	; 3
	.db #0xf8	; 248
	.db #0x01	; 1
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x3d	; 61
	.db #0xc3	; 195
	.db #0x3d	; 61
	.db #0xc3	; 195
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xe3	; 227
	.db #0x1d	; 29
	.db #0xe3	; 227
	.db #0x1d	; 29
	.db #0xe3	; 227
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0xfd	; 253
	.db #0x1d	; 29
	.db #0xfd	; 253
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x90	; 144
	.db #0xe8	; 232
	.db #0xc0	; 192
	.db #0xf8	; 248
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xc2	; 194
	.db #0xc3	; 195
	.db #0xc2	; 194
	.db #0xc3	; 195
	.db #0xc2	; 194
	.db #0xc3	; 195
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x8c	; 140
	.db #0x70	; 112	'p'
	.db #0x24	; 36
	.db #0xd8	; 216
	.db #0x74	; 116	't'
	.db #0x88	; 136
	.db #0x74	; 116	't'
	.db #0x88	; 136
	.db #0x8c	; 140
	.db #0x70	; 112	'p'
	.db #0x50	; 80	'P'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xff	; 255
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xab	; 171
	.db #0x66	; 102	'f'
	.db #0x14	; 20
	.db #0xa9	; 169
	.db #0x8d	; 141
	.db #0x5a	; 90	'Z'
	.db #0x3e	; 62
	.db #0xa5	; 165
	.db #0x99	; 153
	.db #0xaa	; 170
	.db #0x12	; 18
	.db #0xc5	; 197
	.db #0x57	; 87	'W'
	.db #0x6a	; 106	'j'
	.db #0xa9	; 169
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x21	; 33
	.db #0x58	; 88	'X'
	.db #0x9f	; 159
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__guard_dialogue_greet:
	.db #0xa9	; 169
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xae	; 174
	.db #0xaa	; 170
	.db #0xa2	; 162
	.db #0x98	; 152
	.db #0x9e	; 158
	.db #0x9b	; 155
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x99	; 153
	.db #0x9b	; 155
	.db #0x8e	; 142
	.db #0x9c	; 156
	.db #0x8e	; 142
	.db #0x97	; 151
	.db #0x8c	; 140
	.db #0x8e	; 142
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x8b	; 139
	.db #0x9b	; 155
	.db #0x92	; 146
	.db #0x97	; 151
	.db #0x90	; 144
	.db #0x9c	; 156
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x91	; 145
	.db #0x98	; 152
	.db #0x97	; 151
	.db #0x98	; 152
	.db #0x9b	; 155
	.db #0xa5	; 165
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x96	; 150
	.db #0x8a	; 138
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0x8e	; 142
	.db #0x9b	; 155
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x8a	; 138
	.db #0x9c	; 156
	.db #0x9c	; 156
	.db #0x8a	; 138
	.db #0x9c	; 156
	.db #0x9c	; 156
	.db #0x92	; 146
	.db #0x97	; 151
	.db #0xa4	; 164
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xab	; 171
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xb0	; 176
__xinit__button_click:
	.db #0xa9	; 169
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xac	; 172
	.db #0xae	; 174
	.db #0xaa	; 170
	.db #0x92	; 146
	.db #0xa8	; 168
	.db #0x8c	; 140
	.db #0x8a	; 138
	.db #0x97	; 151
	.db #0x97	; 151
	.db #0x98	; 152
	.db #0x9d	; 157
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x9b	; 155
	.db #0x8e	; 142
	.db #0x9c	; 156
	.db #0x92	; 146
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x9d	; 157
	.db #0x91	; 145
	.db #0x8e	; 142
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x8d	; 141
	.db #0x8e	; 142
	.db #0x9c	; 156
	.db #0x92	; 146
	.db #0x9b	; 155
	.db #0x8e	; 142
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x9d	; 157
	.db #0x98	; 152
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x99	; 153
	.db #0x9e	; 158
	.db #0x9c	; 156
	.db #0x91	; 145
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x98	; 152
	.db #0x97	; 151
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x9d	; 157
	.db #0x91	; 145
	.db #0x92	; 146
	.db #0x9c	; 156
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x96	; 150
	.db #0xa2	; 162
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0x8e	; 142
	.db #0x9b	; 155
	.db #0x92	; 146
	.db #0x98	; 152
	.db #0x9e	; 158
	.db #0x9c	; 156
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x8b	; 139
	.db #0x9e	; 158
	.db #0x9d	; 157
	.db #0x9d	; 157
	.db #0x98	; 152
	.db #0x97	; 151
	.db #0xa4	; 164
	.db #0xa4	; 164
	.db #0xa4	; 164
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x8c	; 140
	.db #0x95	; 149
	.db #0x92	; 146
	.db #0x8c	; 140
	.db #0x94	; 148
	.db #0xa7	; 167
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x92	; 146
	.db #0x9c	; 156
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x9d	; 157
	.db #0x91	; 145
	.db #0x8e	; 142
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x90	; 144
	.db #0x9b	; 155
	.db #0x98	; 152
	.db #0x9e	; 158
	.db #0x97	; 151
	.db #0x8d	; 141
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0x96	; 150
	.db #0x98	; 152
	.db #0x9f	; 159
	.db #0x92	; 146
	.db #0x97	; 151
	.db #0x90	; 144
	.db #0xa6	; 166
	.db #0xa7	; 167
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xaf	; 175
	.db #0xab	; 171
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xad	; 173
	.db #0xb0	; 176
__xinit__bird:
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x84	; 132
	.db #0x1a	; 26
	.db #0xf9	; 249
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.area _CABS (ABS)
