#include "model.inc.h"

ALIGNED8 u8 mr_i_iris_geo__texture_06002170[] = {
#include "actors/mr_i_iris/mr_i_iris_geo_0x6002170_custom.rgba16.inc.c"
};
ALIGNED8 u8 mr_i_iris_geo__texture_06002970[] = {
#include "actors/mr_i_iris/mr_i_iris_geo_0x6002970_custom.rgba16.inc.c"
};
ALIGNED8 u8 mr_i_iris_geo__texture_06003170[] = {
#include "actors/mr_i_iris/mr_i_iris_geo_0x6003170_custom.rgba16.inc.c"
};
ALIGNED8 u8 mr_i_iris_geo__texture_06003970[] = {
#include "actors/mr_i_iris/mr_i_iris_geo_0x6003970_custom.rgba16.inc.c"
};

Vtx VB_mr_i_iris_geo_0x6002130[] = {
	{{{ -50, -50, 0 }, 0, { 0, 992 }, { 255, 255, 255, 255}}},
	{{{ 50, -50, 0 }, 0, { 992, 992 }, { 255, 255, 255, 255}}},
	{{{ 50, 50, 0 }, 0, { 992, 0 }, { 255, 255, 255, 255}}},
	{{{ -50, 50, 0 }, 0, { 0, 0 }, { 255, 255, 255, 255}}},
};

Gfx DL_mr_i_iris_geo_0x60041d8[] = {
	gsDPPipeSync(),
	gsDPSetTextureImage(0, 2, 1, mr_i_iris_geo__texture_06002170),
	gsSPBranchList(DL_mr_i_iris_geo_0x6004170),
};

Gfx DL_mr_i_iris_geo_0x6004170[] = {
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTile(0, 2, 0, 0, 7, 0, 2, 5, 0, 2, 5, 0),
	gsDPLoadSync(),
	gsDPLoadBlock(7, 0, 0, 1023, 256),
	gsDPSetTile(0, 2, 8, 0, 0, 0, 2, 5, 0, 2, 5, 0),
	gsDPSetTileSize(0, 0, 0, 124, 124),
	gsSPVertex(VB_mr_i_iris_geo_0x6002130, 4, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
	gsSPTexture(65535, 65535, 0, 0, 0),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, SHADE, 0, 0, 0, SHADE, 0, 0, 0, SHADE),
	gsSPEndDisplayList(),
};

Gfx DL_mr_i_iris_geo_0x60041f0[] = {
	gsDPPipeSync(),
	gsDPSetTextureImage(0, 2, 1, mr_i_iris_geo__texture_06002970),
	gsSPBranchList(DL_mr_i_iris_geo_0x6004170),
};

Gfx DL_mr_i_iris_geo_0x6004208[] = {
	gsDPPipeSync(),
	gsDPSetTextureImage(0, 2, 1, mr_i_iris_geo__texture_06003170),
	gsSPBranchList(DL_mr_i_iris_geo_0x6004170),
};

Gfx DL_mr_i_iris_geo_0x6004220[] = {
	gsDPPipeSync(),
	gsDPSetTextureImage(0, 2, 1, mr_i_iris_geo__texture_06003970),
	gsSPBranchList(DL_mr_i_iris_geo_0x6004170),
};

