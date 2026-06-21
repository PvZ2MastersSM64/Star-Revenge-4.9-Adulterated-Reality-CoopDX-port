#include "model.inc.h"

ALIGNED8 u8 purple_marble_geo__texture_0401D560[] = {
#include "actors/bubble/purple_marble_geo_0x401d560_custom.rgba16.inc.c"
};

Vtx VB_purple_marble_geo_0x401cd20[] = {
	{{{ -16, 0, 0 }, 0, { 0, 992 }, { 255, 255, 255, 255}}},
	{{{ 16, 0, 0 }, 0, { 992, 992 }, { 255, 255, 255, 255}}},
	{{{ 16, 32, 0 }, 0, { 992, 0 }, { 255, 255, 255, 255}}},
	{{{ -16, 32, 0 }, 0, { 0, 0 }, { 255, 255, 255, 255}}},
};

Gfx DL_purple_marble_geo_0x401dde0[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(0, 2, 1, purple_marble_geo__texture_0401D560),
	gsDPSetTile(0, 2, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0),
	gsDPLoadSync(),
	gsDPLoadBlock(7, 0, 0, 1023, 256),
	gsDPPipeSync(),
	gsDPSetTile(0, 2, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0),
	gsDPSetTileSize(0, 0, 0, 124, 124),
	gsSPVertex(VB_purple_marble_geo_0x401cd20, 4, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
	gsSPTexture(65535, 65535, 0, 0, 0),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, SHADE, 0, 0, 0, SHADE, 0, 0, 0, SHADE),
	gsSPEndDisplayList(),
};

