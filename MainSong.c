#include "HUGE/hUGEDriver.h"
#include <stddef.h>

static const unsigned char order_cnt = 12;

static const unsigned char P0[] = {
    DN(___,0,0x000),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(B_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(D_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(D_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(B_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(B_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(D_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(D_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(B_4,3,0xC0F),
};
static const unsigned char P1[] = {
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
};
static const unsigned char P5[] = {
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
};
static const unsigned char P10[] = {
    DN(___,0,0x000),
    DN(G_5,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(D_5,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(E_5,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(A_4,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(G_5,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(D_5,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(E_5,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(A_4,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
};
static const unsigned char P11[] = {
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_5,8,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
};
static const unsigned char P12[] = {
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(D_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(D_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(D_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(B_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(D_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(D_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(___,0,0x000),
};
static const unsigned char P14[] = {
    DN(___,0,0xC00),
    DN(E_5,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(G_5,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(F_5,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(A_4,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(G_5,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(D_5,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(E_5,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0xC00),
    DN(A_4,4,0xC2A),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
};
static const unsigned char P16[] = {
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(D_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(D_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(E_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(D_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(D_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(B_4,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
    DN(___,0,0xC00),
    DN(C_5,3,0xC0F),
    DN(___,0,0xC00),
    DN(A_4,3,0xC08),
};
static const unsigned char P18[] = {
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(___,0,0x000),
};
static const unsigned char P21[] = {
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0x000),
    DN(___,0,0x000),
    DN(C_3,8,0xCFF),
    DN(___,0,0xC00),
    DN(___,0,0xB03),
};

static const unsigned char* const order1[] = {P0,P0,P0,P12,P16,P16};
static const unsigned char* const order2[] = {P1,P5,P5,P5,P5,P21};
static const unsigned char* const order3[] = {P1,P1,P10,P14,P18,P18};
static const unsigned char* const order4[] = {P1,P1,P11,P11,P11,P11};

static const hUGEDutyInstr_t duty_instruments[] = {
    {8,0,240,0,128},
    {8,64,240,0,128},
    {8,128,240,0,128},
    {8,192,240,0,128},
    {8,0,241,0,128},
    {8,64,241,0,128},
    {8,128,241,0,128},
    {8,192,241,0,128},
    {8,128,240,0,128},
    {8,128,240,0,128},
    {8,128,240,0,128},
    {8,128,240,0,128},
    {8,128,240,0,128},
    {8,128,240,0,128},
    {8,128,240,0,128},
};
static const hUGEWaveInstr_t wave_instruments[] = {
    {0,32,0,0,128},
    {0,32,1,0,128},
    {0,32,2,0,128},
    {0,32,3,0,128},
    {0,32,4,0,128},
    {0,32,5,0,128},
    {0,32,6,0,128},
    {0,32,7,0,128},
    {0,32,8,0,128},
    {0,32,9,0,128},
    {0,32,10,0,128},
    {0,32,11,0,128},
    {0,32,12,0,128},
    {0,32,13,0,128},
    {0,32,14,0,128},
};
static const hUGENoiseInstr_t noise_instruments[] = {
    {240,0,0,0,0},
    {240,0,0,0,0},
    {240,0,0,0,0},
    {240,0,0,0,0},
    {240,0,0,0,0},
    {240,0,0,0,0},
    {240,0,0,0,0},
    {240,0,0,0,0},
    {240,0,0,0,0},
    {240,0,0,0,0},
    {240,0,0,0,0},
    {240,0,0,0,0},
    {240,0,0,0,0},
    {240,0,0,0,0},
    {240,0,0,0,0},
};

static const unsigned char waves[] = {
    0,0,255,255,255,255,255,255,255,255,255,255,255,255,255,255,
    0,0,0,0,255,255,255,255,255,255,255,255,255,255,255,255,
    0,0,0,0,0,0,0,0,255,255,255,255,255,255,255,255,
    0,0,0,0,0,0,0,0,0,0,0,0,255,255,255,255,
    0,1,18,35,52,69,86,103,120,137,154,171,188,205,222,239,
    254,220,186,152,118,84,50,16,18,52,86,120,154,188,222,255,
    122,205,219,117,33,19,104,189,220,151,65,1,71,156,221,184,
    15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,
    254,252,250,248,246,244,242,240,242,244,246,248,250,252,254,255,
    254,221,204,187,170,153,136,119,138,189,241,36,87,138,189,238,
    132,17,97,237,87,71,90,173,206,163,23,121,221,32,3,71,
    33,68,4,73,230,218,206,187,98,74,233,119,109,170,71,25,
    30,158,98,217,228,94,188,198,133,189,173,157,2,152,37,153,
    120,172,164,160,99,221,166,197,99,119,91,1,172,177,218,72,
    215,201,0,131,187,139,69,235,84,32,23,179,154,220,93,12,
    69,184,90,231,122,193,173,115,237,10,34,18,76,154,154,104,
};

const hUGESong_t david_og_song = {7, &order_cnt, order1, order2, order3,order4, duty_instruments, wave_instruments, noise_instruments, NULL, waves};
