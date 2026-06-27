-- Thank you Fearl

local function act_custom_ledge_grab(m)
	local intendedDYaw = m.intendedYaw - m.faceAngle.y
	local hasSpaceForMario = (m.ceilHeight - m.floorHeight) >= 160

	if (m.actionTimer < 10) then
		m.actionTimer = m.actionTimer + 1
	end

	if (m.input & (INPUT_Z_PRESSED | INPUT_OFF_FLOOR | INPUT_UNKNOWN_10) ~= 0) then
		return let_go_of_ledge(m)
	end

	if ((m.input & INPUT_A_PRESSED) ~= 0 and hasSpaceForMario) then
		return set_mario_action(m, ACT_LEDGE_CLIMB_FAST, 0)
	end

	if (m.actionTimer == 10 and (m.input & INPUT_NONZERO_ANALOG) ~= 0) then
		if (intendedDYaw >= -0x4000 and intendedDYaw <= 0x4000) then
			if hasSpaceForMario then
				return set_mario_action(m, ACT_LEDGE_CLIMB_SLOW_1, 0)
			end
		else
			return let_go_of_ledge(m)
		end
	end

	local heightAboveFloor = m.pos.y - find_floor_height_relative_polar(m, -0x8000, 30)
	if (hasSpaceForMario and heightAboveFloor < 100) then
		return set_mario_action(m, ACT_LEDGE_CLIMB_FAST, 0)
	end

	if (m.actionArg == 0) then
		play_character_sound_if_no_flag(m, CHAR_SOUND_WHOA, MARIO_MARIO_SOUND_PLAYED)
	end

	stop_and_set_height_to_floor(m)
	set_character_animation(m, CHAR_ANIM_IDLE_ON_LEDGE)

	return 0
end

hook_mario_action(ACT_LEDGE_GRAB, act_custom_ledge_grab)