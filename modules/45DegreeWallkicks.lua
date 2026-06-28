-- name:  Any Degree Wallkicks
-- description: Allows wallkicks to happen at 45 degree angles, or whatever angles are set. Default is 45 degrees.\nCreated by Sunk.

--There may be more I missed
local actions_able_to_wallkick =
{
    [ACT_JUMP] = ACT_JUMP,
    [ACT_HOLD_JUMP] = ACT_HOLD_JUMP,
    [ACT_DOUBLE_JUMP] = ACT_DOUBLE_JUMP,
    [ACT_TRIPLE_JUMP] = ACT_TRIPLE_JUMP,
    [ACT_SIDE_FLIP] = ACT_SIDE_FLIP,
    [ACT_BACKFLIP] = ACT_BACKFLIP,
    [ACT_LONG_JUMP] = ACT_LONG_JUMP,
    [ACT_WALL_KICK_AIR] = ACT_WALL_KICK_AIR,
    [ACT_TOP_OF_POLE_JUMP] = ACT_TOP_OF_POLE_JUMP,
    [ACT_FREEFALL] = ACT_FREEFALL
}

-- Whether the 45 degree wallkick code will be in effect
local can_wallkick = true
function toggle_wallkick(msg)
    if (msg == "on") then djui_chat_message_create("45 Degree Wallkick is on.")
        can_wallkick = true
        return true
    elseif (msg == "off") then djui_chat_message_create("45 Degree Wallkick is off.")
        can_wallkick = false
        return true
    end
    return false
end

hook_chat_command('45wallkick', "[on/off] 45 Degree Wallkick toggle", toggle_wallkick)

--This is in degrees
gGlobalSyncTable.limit = 46

--This is mostly copied from the wall bonk check code
---@param m MarioState
function wallkicks(m)
    if m.playerIndex ~= 0 then return end

    if m.wall ~= nil and can_wallkick == true then
        if (m.wall.type == SURFACE_BURNING) then return end

        local wallDYaw = (atan2s(m.wall.normal.z, m.wall.normal.x) - (m.faceAngle.y))
        --I don't really understand this however I do know the lower `limit` becomes, the more possible wallkick degrees.
        local limitNegative = (-((180 - gGlobalSyncTable.limit) * (8192/45))) + 1
        local limitPositive = ((180 - gGlobalSyncTable.limit) * (8192/45)) - 1
        --wallDYaw is s16, so I converted it
        wallDYaw = math.s16(wallDYaw)

        --Standard air hit wall requirements
        if (m.forwardVel >= 16) and (actions_able_to_wallkick[m.action] ~= nil) then
            if (wallDYaw >= limitPositive) or (wallDYaw <= limitNegative) then
                mario_bonk_reflection(m, 0)
                m.faceAngle.y = m.faceAngle.y + 0x8000
                set_mario_action(m, ACT_AIR_HIT_WALL, 0)
            end
        end
    end
end

hook_event(HOOK_BEFORE_MARIO_UPDATE, wallkicks)
