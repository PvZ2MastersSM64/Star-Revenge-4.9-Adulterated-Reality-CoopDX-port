-- Prevent entering the 70 star door without enough stars
---@param m MarioState
---@param action integer
local function before_set_mario_action(m, action)
    if m.playerIndex ~= 0 then return end

    if action == ACT_ENTERING_STAR_DOOR then
        local obj = m.interactObj

        if obj then
            local requiredNumStars = (obj.oBehParams >> 24) & 0xFF

            if m.numStars < requiredNumStars then
                return ACT_IDLE
            end
        end
    end
end

-- Mute 1-Up collect sound
---@param sound integer
local function on_play_sound(sound)
    if sound == SOUND_GENERAL_COLLECT_1UP then
        return NO_SOUND
    end
    return sound
end

-- Set the dialog background override color to blue
local function on_dialog()
    set_dialog_override_color(0, 0, 145, 150, 255, 255, 255, 255)
end

hook_event(HOOK_BEFORE_SET_MARIO_ACTION, before_set_mario_action)
hook_event(HOOK_ON_PLAY_SOUND, on_play_sound)
hook_event(HOOK_ON_DIALOG, on_dialog)
hook_event(HOOK_MARIO_UPDATE, function (m) m.peakHeight = m.pos.y end)
