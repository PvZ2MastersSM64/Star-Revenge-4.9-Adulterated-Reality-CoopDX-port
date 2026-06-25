#include <ultra64.h>
#include "sm64.h"
#include "behavior_data.h"
#include "model_ids.h"
#include "seq_ids.h"
#include "dialog_ids.h"
#include "segment_symbols.h"
#include "level_commands.h"
#include "game/level_update.h"
#include "levels/scripts.h"
#include "actors/common1.h"
#include "make_const_nonconst.h"

#include "areas/1/custom.model.inc.h"

#include "areas/2/custom.model.inc.h"

#include "areas/3/custom.model.inc.h"

#include "areas/4/custom.model.inc.h"

#include "levels/castle_courtyard/header.h"
#include "levels/bbh/header.h"

extern u8 _castle_courtyard_segment_ESegmentRomStart[];
extern u8 _castle_courtyard_segment_ESegmentRomEnd[];

const LevelScript level_castle_courtyard_entry[] = {
	INIT_LEVEL(),
	LOAD_MIO0(0x07, _bbh_segment_7SegmentRomStart, _bbh_segment_7SegmentRomEnd),
	LOAD_RAW(0x1A, _bbhSegmentRomStart, _bbhSegmentRomEnd),
	LOAD_RAW(0x0E, _castle_courtyard_segment_ESegmentRomStart, _castle_courtyard_segment_ESegmentRomEnd),
	LOAD_MIO0(0xA, _SkyboxCustom43196400_skybox_mio0SegmentRomStart, _SkyboxCustom43196400_skybox_mio0SegmentRomEnd),
	LOAD_MIO0(8, _common0_mio0SegmentRomStart, _common0_mio0SegmentRomEnd),
	LOAD_RAW(15, _common0_geoSegmentRomStart, _common0_geoSegmentRomEnd),
	LOAD_MIO0(5, _group8_mio0SegmentRomStart, _group8_mio0SegmentRomEnd),
	LOAD_RAW(12, _group8_geoSegmentRomStart, _group8_geoSegmentRomEnd),
	ALLOC_LEVEL_POOL(),
	MARIO(/*model*/ MODEL_MARIO, /*behParam*/ 0x00000001, /*beh*/ bhvMario),
	// Level Specific Models
	LOAD_MODEL_FROM_GEO(MODEL_BBH_HAUNTED_DOOR,           haunted_door_geo),
	LOAD_MODEL_FROM_GEO(MODEL_BBH_STAIRCASE_STEP,         geo_bbh_0005B0),
	LOAD_MODEL_FROM_GEO(MODEL_BBH_TILTING_FLOOR_PLATFORM, geo_bbh_0005C8),
	LOAD_MODEL_FROM_GEO(MODEL_BBH_TUMBLING_PLATFORM,      geo_bbh_0005E0),
	LOAD_MODEL_FROM_GEO(MODEL_BBH_TUMBLING_PLATFORM_PART, geo_bbh_0005F8),
	LOAD_MODEL_FROM_GEO(MODEL_BBH_MOVING_BOOKSHELF,       geo_bbh_000610),
	LOAD_MODEL_FROM_GEO(MODEL_BBH_MESH_ELEVATOR,          geo_bbh_000628),
	LOAD_MODEL_FROM_GEO(MODEL_BBH_MERRY_GO_ROUND,         geo_bbh_000640),
	LOAD_MODEL_FROM_GEO(MODEL_BBH_WOODEN_TOMB,            geo_bbh_000658),
	// Unspecified Models
	LOAD_MODEL_FROM_GEO(22,  warp_pipe_geo),
	LOAD_MODEL_FROM_GEO(23,  bubbly_tree_geo),
	LOAD_MODEL_FROM_GEO(24,  spiky_tree_geo),
	LOAD_MODEL_FROM_GEO(25,  snow_tree_geo),
	LOAD_MODEL_FROM_GEO(27,  palm_tree_geo),
	LOAD_MODEL_FROM_GEO(31,  metal_door_geo),
	LOAD_MODEL_FROM_GEO(32,  hazy_maze_door_geo),
	LOAD_MODEL_FROM_GEO(34,  castle_door_0_star_geo),
	LOAD_MODEL_FROM_GEO(35,  castle_door_1_star_geo),
	LOAD_MODEL_FROM_GEO(36,  castle_door_3_stars_geo),
	LOAD_MODEL_FROM_GEO(37,  key_door_geo),
	LOAD_MODEL_FROM_GEO(38,  castle_door_geo),
	// LOAD_MODEL_FROM_DL(84, 0x05002e00, 4),
	// LOAD_MODEL_FROM_DL(86, 0x05003120, 4),
	// LOAD_MODEL_FROM_GEO(131, 0x0404fe00),
	// LOAD_MODEL_FROM_DL(132, 0x08025f08, 4),
	// LOAD_MODEL_FROM_GEO(137, 0x04050000),
	// LOAD_MODEL_FROM_DL(158, 0x0302c8a0, 4),
	// LOAD_MODEL_FROM_DL(159, 0x0302bcd0, 4),
	// LOAD_MODEL_FROM_DL(161, 0x0301cb00, 4),
	// LOAD_MODEL_FROM_DL(164, 0x04032a18, 4),
	// LOAD_MODEL_FROM_DL(201, 0x080048e0, 4),
	// LOAD_MODEL_FROM_DL(218, 0x08024bb8, 4),
	JUMP_LINK(script_func_global_1),
	JUMP_LINK(script_func_global_9),
	JUMP_LINK(local_area_castle_courtyard_1_),
	JUMP_LINK(local_area_castle_courtyard_2_),
	JUMP_LINK(local_area_castle_courtyard_3_),
	JUMP_LINK(local_area_castle_courtyard_4_),
	FREE_LEVEL_POOL(),
	MARIO_POS(/* area */ 1, /* yaw */ 0, /* pos */ 0, 0, 0),
	CALL(/*arg*/ 0, /*func*/ lvl_init_or_update),
	CALL_LOOP(/*arg*/ 1, /*func*/ lvl_init_or_update),
	CLEAR_LEVEL(),
	SLEEP_BEFORE_EXIT(/*frames*/ 1),
	EXIT(),
};

const LevelScript local_area_castle_courtyard_1_[] = {
	AREA(1, Geo_castle_courtyard_1_0x2957f20),
	TERRAIN(col_castle_courtyard_1_0xe0932f0),
	SET_BACKGROUND_MUSIC(0, 0),
	TERRAIN_TYPE(0),
	JUMP_LINK(local_objects_castle_courtyard_1_),
	JUMP_LINK(local_warps_castle_courtyard_1_),
	END_AREA(),
	RETURN()
};

const LevelScript local_objects_castle_courtyard_1_[] = {
	OBJECT_WITH_ACTS(195, 311, 0, 9372, 0, 0, 0, 0x3d0000,  bhvBobombBuddy, 31),
	OBJECT_WITH_ACTS(0, 1, 540, 9406, 0, 180, 0, 0x30000,  bhvAirborneStarCollectWarp, 31),
	OBJECT_WITH_ACTS(0, 1, 540, 9406, 0, 180, 0, 0x40000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 11, 540, 14, 0, 180, 0, 0x50000,  bhvAirborneStarCollectWarp, 31),
	OBJECT_WITH_ACTS(0, 11, 540, 14, 0, 180, 0, 0x60000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 13, 540, -9337, 0, 180, 0, 0x70000,  bhvAirborneStarCollectWarp, 31),
	OBJECT_WITH_ACTS(0, 13, 540, -9337, 0, 180, 0, 0x80000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 4815, 540, 9421, 0, 180, 0, 0x90000,  bhvAirborneStarCollectWarp, 31),
	OBJECT_WITH_ACTS(0, 4815, 540, 9421, 0, 180, 0, 0xa0000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 4824, 540, 29, 0, 180, 0, 0xb0000,  bhvAirborneStarCollectWarp, 31),
	OBJECT_WITH_ACTS(0, 4824, 540, 29, 0, 180, 0, 0xc0000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 4795, 540, -9341, 0, 180, 0, 0xd0000,  bhvAirborneStarCollectWarp, 31),
	OBJECT_WITH_ACTS(0, 4795, 540, -9341, 0, 180, 0, 0xe0000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 9605, 540, 9413, 0, 180, 0, 0xf0000,  bhvAirborneStarCollectWarp, 31),
	OBJECT_WITH_ACTS(0, 9605, 540, 9413, 0, 180, 0, 0x100000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 9606, 540, 26, 0, 180, 0, 0x110000,  bhvAirborneStarCollectWarp, 31),
	OBJECT_WITH_ACTS(0, 9606, 540, 26, 0, 180, 0, 0x120000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 9598, 540, -9351, 0, 180, 0, 0x130000,  bhvAirborneStarCollectWarp, 31),
	OBJECT_WITH_ACTS(0, 9598, 540, -9351, 0, 180, 0, 0x140000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 14403, 540, 9407, 0, 180, 0, 0x150000,  bhvAirborneStarCollectWarp, 31),
	OBJECT_WITH_ACTS(0, 14403, 540, 9407, 0, 180, 0, 0x160000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 14408, 540, 31, 0, 180, 0, 0x170000,  bhvAirborneStarCollectWarp, 31),
	OBJECT_WITH_ACTS(0, 14408, 540, 31, 0, 180, 0, 0x180000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 14407, 540, -9341, 0, 180, 0, 0x190000,  bhvAirborneStarCollectWarp, 31),
	OBJECT_WITH_ACTS(0, 14407, 540, -9341, 0, 180, 0, 0x1a0000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 19224, 540, 9402, 0, 180, 0, 0x1b0000,  bhvAirborneStarCollectWarp, 31),
	OBJECT_WITH_ACTS(0, 19224, 540, 9402, 0, 180, 0, 0x1c0000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 19205, 540, -15, 0, 180, 0, 0x1d0000,  bhvAirborneStarCollectWarp, 31),
	OBJECT_WITH_ACTS(0, 19205, 540, -15, 0, 180, 0, 0x1e0000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(22, 4, 0, 11489, 0, 180, 0, 0x270000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 5, 0, 7306, 0, 180, 0, 0x280000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 9, 0, 2114, 0, 180, 0, 0x290000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 5, 0, -2091, 0, 180, 0, 0x2a0000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 9, 0, -7252, 0, 180, 0, 0x2b0000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 9, 0, -11462, 0, 180, 0, 0x2c0000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 4801, 0, 11498, 0, 180, 0, 0x2d0000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 4798, 0, 7289, 0, 180, 0, 0x2e0000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 4802, 0, 2109, 0, 180, 0, 0x2e0000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 4809, 0, -2093, 0, 180, 0, 0x300000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 4809, 0, -7268, 0, 180, 0, 0x310000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 4809, 0, -11463, 0, 180, 0, 0x320000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 9610, 0, 11498, 0, 180, 0, 0x330000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 9609, 0, 7294, 0, 180, 0, 0x340000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 9608, 0, 2118, 0, 180, 0, 0x350000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 9602, 0, -2079, 0, 180, 0, 0x360000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 9617, 0, -7252, 0, 180, 0, 0x370000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 9604, 0, -11454, 0, 180, 0, 0x380000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 14407, 0, 11500, 0, 180, 0, 0x390000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 14411, 0, 7292, 0, 180, 0, 0x3a0000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 14404, 0, 2133, 0, 180, 0, 0x3b0000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 14396, 0, -2093, 0, 180, 0, 0x3c0000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 14397, 0, -7252, 0, 180, 0, 0x3d0000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 14405, 0, -11464, 0, 180, 0, 0x3e0000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 19201, 0, 11510, 0, 180, 0, 0x3f0000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 19209, 0, 7309, 0, 180, 0, 0x400000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 19211, 0, 2125, 0, 180, 0, 0x410000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 19211, 0, -2099, 0, 180, 0, 0x420000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 19211, 0, -7255, 0, 0, 0, 0x430000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 23990, 0, 11491, 0, 0, 0, 0x450000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 24005, 0, 7274, 0, 0, 0, 0x460000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(22, 24008, 0, 2111, 0, 0, 0, 0x470000,  bhvWarpPipe, 31),
	OBJECT_WITH_ACTS(46, 5, 0, 2135, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 9, 0, 11514, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 4795, 0, 11515, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 9616, 0, 11511, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 14412, 0, 11531, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 19182, 0, 11528, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 4821, 0, 2098, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 9602, 0, 2113, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 14413, 0, 2138, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 19218, 0, 2130, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, -9, 0, -7275, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 4804, 0, -7288, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 9617, 0, -7270, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 14401, 0, -7250, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 19228, 0, -7264, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 24006, 0, 11491, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 24003, 0, 2122, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(46, 24059, 0, -7266, 0, 0, 0, 0x10000,  bhvCheckpoint_Flag_MOP, 31),
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 41,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 42,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 43,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 44,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 45,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 46,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 47,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 48,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 49,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 50,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 51,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 52,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 53,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 54,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 6, 0, 0, 20, 55,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 56,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 57,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 58,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 59,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 60,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 61,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 62,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 63,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 64,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 65,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 66,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 67,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 68,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 69,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 70,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 71,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 72,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 73,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 74,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 75,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 76,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 77,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 78,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 79,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 80,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 81,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 82,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 83,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 84,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 85,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 86,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 87,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 88,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 89,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 90,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 91,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 92,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 93,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 94,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 95,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 96,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 97,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 98,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 99,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 100,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 101,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 102,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 103,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 104,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 105,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 106,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 107,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 108,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 109,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 110,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 111,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 112,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 113,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 114,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 115,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 116,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 117,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 118,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 119,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 120,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 121,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 122,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 123,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 124,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 125,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 22, 0, 0, 20, 126,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 127,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 128,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 129,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -8, 5, 26, 0, 0, 20, 130,  RM_Scroll_Texture, 31), // EDITED
	RETURN()
};

const LevelScript local_warps_castle_courtyard_1_[] = {
	WARP_NODE(10, 9, 1, 0, 0),
	WARP_NODE(0, 26, 1, 0, 0),
	WARP_NODE(1, 26, 1, 0, 0),
	WARP_NODE(2, 26, 1, 0, 0),
	WARP_NODE(3, 26, 1, 0, 0),
	WARP_NODE(4, 26, 1, 0, 0),
	WARP_NODE(5, 26, 1, 0, 0),
	WARP_NODE(6, 26, 1, 0, 0),
	WARP_NODE(7, 26, 1, 0, 0),
	WARP_NODE(8, 26, 1, 0, 0),
	WARP_NODE(9, 26, 1, 0, 0),
	WARP_NODE(11, 26, 1, 0, 0),
	WARP_NODE(12, 26, 1, 0, 0),
	WARP_NODE(13, 26, 1, 0, 0),
	WARP_NODE(14, 26, 1, 0, 0),
	WARP_NODE(15, 26, 1, 0, 0),
	WARP_NODE(16, 26, 1, 0, 0),
	WARP_NODE(17, 26, 1, 0, 0),
	WARP_NODE(18, 26, 1, 0, 0),
	WARP_NODE(19, 26, 1, 0, 0),
	WARP_NODE(20, 26, 1, 0, 0),
	WARP_NODE(21, 26, 1, 0, 0),
	WARP_NODE(22, 26, 1, 0, 0),
	WARP_NODE(23, 26, 1, 0, 0),
	WARP_NODE(24, 26, 1, 0, 0),
	WARP_NODE(25, 26, 1, 0, 0),
	WARP_NODE(26, 26, 1, 0, 0),
	WARP_NODE(27, 26, 1, 0, 0),
	WARP_NODE(28, 26, 1, 0, 0),
	WARP_NODE(29, 26, 1, 0, 0),
	WARP_NODE(30, 26, 1, 0, 0),
	WARP_NODE(31, 26, 1, 0, 0),
	WARP_NODE(32, 26, 1, 0, 0),
	WARP_NODE(33, 26, 1, 0, 0),
	WARP_NODE(34, 26, 1, 0, 0),
	WARP_NODE(35, 26, 1, 0, 0),
	WARP_NODE(36, 26, 1, 0, 0),
	WARP_NODE(37, 26, 1, 0, 0),
	WARP_NODE(38, 26, 1, 0, 0),
	WARP_NODE(39, 16, 1, 47, 0),
	WARP_NODE(40, 9, 1, 10, 0),
	WARP_NODE(41, 9, 1, 2, 0),
	WARP_NODE(42, 24, 1, 10, 0),
	WARP_NODE(43, 9, 1, 3, 0),
	WARP_NODE(44, 12, 1, 10, 0),
	WARP_NODE(45, 24, 1, 11, 0),
	WARP_NODE(46, 5, 1, 10, 0),
	WARP_NODE(47, 4, 1, 12, 0),
	WARP_NODE(48, 4, 1, 10, 0),
	WARP_NODE(49, 24, 1, 12, 0),
	WARP_NODE(50, 7, 1, 10, 0),
	WARP_NODE(51, 7, 1, 11, 0),
	WARP_NODE(52, 22, 1, 10, 0),
	WARP_NODE(53, 22, 1, 3, 0),
	WARP_NODE(54, 8, 1, 10, 0),
	WARP_NODE(55, 8, 1, 2, 0),
	WARP_NODE(56, 23, 1, 10, 0),
	WARP_NODE(57, 8, 1, 3, 0),
	WARP_NODE(58, 10, 1, 10, 0),
	WARP_NODE(59, 10, 1, 1, 0),
	WARP_NODE(60, 11, 1, 10, 0),
	WARP_NODE(61, 11, 1, 11, 0),
	WARP_NODE(62, 36, 1, 10, 0),
	WARP_NODE(63, 36, 1, 1, 0),
	WARP_NODE(64, 13, 1, 10, 0),
	WARP_NODE(65, 4, 1, 13, 0),
	WARP_NODE(66, 17, 1, 10, 0),
	WARP_NODE(67, 16, 1, 10, 0),
	WARP_NODE(68, 15, 1, 10, 0),
	WARP_NODE(69, 26, 1, 0, 0),
	WARP_NODE(70, 26, 1, 0, 0),
	WARP_NODE(71, 26, 1, 0, 0),
	WARP_NODE(72, 26, 1, 0, 0),
	WARP_NODE(73, 26, 1, 0, 0),
	WARP_NODE(74, 26, 1, 0, 0),
	WARP_NODE(75, 26, 1, 0, 0),
	WARP_NODE(76, 5, 1, 12, 0),
	WARP_NODE(240, 6, 1, 50, 0),
	WARP_NODE(241, 16, 1, 21, 0),
	RETURN()
};

const LevelScript local_area_castle_courtyard_2_[] = {
	AREA(2, Geo_castle_courtyard_2_0x2957e00),
	TERRAIN(col_castle_courtyard_2_0xe019af0),
	SET_BACKGROUND_MUSIC(0, 0),
	TERRAIN_TYPE(0),
	JUMP_LINK(local_objects_castle_courtyard_2_),
	JUMP_LINK(local_warps_castle_courtyard_2_),
	END_AREA(),
	RETURN()
};

const LevelScript local_objects_castle_courtyard_2_[] = {
	OBJECT_WITH_ACTS(0, 0, 464, 176, 0, 180, 0, 0xa0000,  bhvSpinAirborneWarp, 31),
	OBJECT_WITH_ACTS(137, 0, 275, -457, 0, 0, 0, 0x20000,  bhvExclamationBox, 31),
	OBJECT_WITH_ACTS(0, 0, 99, 461, 0, 0, 0, 0x10000,  bhvFadingWarp, 31),
	OBJECT_WITH_ACTS(0, 0, 464, 176, 0, 180, 0, 0x30000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 3, 4, 38, 0, 0, 20, 131,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, 4, 4, 5, 0, 0, 20, 132,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, 3, 4, 26, 0, 0, 20, 133,  RM_Scroll_Texture, 31), // EDITED
	RETURN()
};

const LevelScript local_warps_castle_courtyard_2_[] = {
	WARP_NODE(10, 9, 2, 0, 0),
	WARP_NODE(0, 26, 2, 0, 0),
	WARP_NODE(1, 23, 1, 9, 0),
	WARP_NODE(2, 26, 2, 0, 0),
	WARP_NODE(3, 26, 2, 0, 0),
	WARP_NODE(240, 6, 1, 50, 0),
	WARP_NODE(241, 26, 2, 3, 0),
	RETURN()
};

const LevelScript local_area_castle_courtyard_3_[] = {
	AREA(3, Geo_castle_courtyard_3_0x2957ce0),
	TERRAIN(col_castle_courtyard_3_0xe0247b0),
	SET_BACKGROUND_MUSIC(0, 0),
	TERRAIN_TYPE(0),
	JUMP_LINK(local_objects_castle_courtyard_3_),
	JUMP_LINK(local_warps_castle_courtyard_3_),
	END_AREA(),
	RETURN()
};

const LevelScript local_objects_castle_courtyard_3_[] = {
	OBJECT_WITH_ACTS(137, -1310, -98, -1106, 0, 0, 0, 0x10000,  bhvExclamationBox, 31),
	OBJECT_WITH_ACTS(38, -1339, 0, -1175, 0, 180, 0, 0x30000,  bhvDoorWarp, 31),
	OBJECT_WITH_ACTS(38, 1230, 0, -1179, 0, 180, 0, 0x40000,  bhvDoorWarp, 31),
	OBJECT_WITH_ACTS(38, -1339, 0, 1023, 0, 0, 0, 0x10000,  bhvDoorWarp, 31),
	OBJECT_WITH_ACTS(38, 1234, 0, 1024, 0, 0, 0, 0x20000,  bhvDoorWarp, 31),
	OBJECT_WITH_ACTS(137, 1270, -98, -1106, 0, 0, 0, 0x20000,  bhvExclamationBox, 31),
	OBJECT_WITH_ACTS(137, -1310, -98, -1016, 0, 0, 0, 0x10000,  bhvExclamationBox, 31),
	OBJECT_WITH_ACTS(137, 1270, -98, -1016, 0, 0, 0, 0x20000,  bhvExclamationBox, 31),
	OBJECT_WITH_ACTS(137, -1400, -98, -1016, 0, 0, 0, 0x10000,  bhvExclamationBox, 31),
	OBJECT_WITH_ACTS(137, -1400, -98, -1106, 0, 0, 0, 0x10000,  bhvExclamationBox, 31),
	OBJECT_WITH_ACTS(137, 1180, -98, -1016, 0, 0, 0, 0x20000,  bhvExclamationBox, 31),
	OBJECT_WITH_ACTS(137, 1180, -98, -1106, 0, 0, 0, 0x20000,  bhvExclamationBox, 31),
	OBJECT_WITH_ACTS(0, 3, 4, 26, 0, 0, 20, 134,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, 3, 4, 26, 0, 0, 20, 135,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, 3, 4, 36, 0, 0, 20, 136,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, 3, 4, 36, 0, 0, 20, 137,  RM_Scroll_Texture, 31), // EDITED
	RETURN()
};

const LevelScript local_warps_castle_courtyard_3_[] = {
	WARP_NODE(10, 9, 3, 0, 0),
	WARP_NODE(0, 26, 3, 0, 0),
	WARP_NODE(1, 6, 1, 21, 0),
	WARP_NODE(2, 6, 1, 22, 0),
	WARP_NODE(3, 29, 1, 10, 0),
	WARP_NODE(4, 29, 2, 10, 0),
	WARP_NODE(240, 6, 1, 50, 0),
	WARP_NODE(241, 6, 1, 3, 0),
	RETURN()
};

const LevelScript local_area_castle_courtyard_4_[] = {
	AREA(4, Geo_castle_courtyard_4_0x2957bc0),
	TERRAIN(col_castle_courtyard_4_0xe0139b0),
	SET_BACKGROUND_MUSIC(0, 0),
	TERRAIN_TYPE(0),
	JUMP_LINK(local_objects_castle_courtyard_4_),
	JUMP_LINK(local_warps_castle_courtyard_4_),
	END_AREA(),
	RETURN()
};

const LevelScript local_objects_castle_courtyard_4_[] = {
	OBJECT_WITH_ACTS(0, 0, 390, 460, 0, 180, 0, 0xa0000,  bhvSpinAirborneWarp, 31),
	OBJECT_WITH_ACTS(0, 0, 90, -460, 0, 0, 0, 0x10000,  bhvFadingWarp, 31),
	OBJECT_WITH_ACTS(85, 0, 0, 0, 0, 0, 0, 0x30000,  bhvCapSwitch, 31),
	OBJECT_WITH_ACTS(0, 0, 390, 460, 0, 180, 0, 0x20000,  bhvAirborneDeathWarp, 31),
	OBJECT_WITH_ACTS(0, 3, 4, 40, 0, 0, 20, 138,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, -10, 5, 5, 0, 0, 20, 139,  RM_Scroll_Texture, 31), // EDITED
	OBJECT_WITH_ACTS(0, 3, 4, 26, 0, 0, 20, 140,  RM_Scroll_Texture, 31), // EDITED
	RETURN()
};

const LevelScript local_warps_castle_courtyard_4_[] = {
	WARP_NODE(10, 9, 4, 0, 0),
	WARP_NODE(0, 26, 4, 0, 0),
	WARP_NODE(1, 16, 1, 12, 0),
	WARP_NODE(2, 26, 4, 0, 0),
	WARP_NODE(3, 26, 4, 0, 0),
	WARP_NODE(240, 6, 1, 50, 0),
	WARP_NODE(241, 26, 4, 2, 0),
	RETURN()
};