gLevelValues.entryLevel = 44
-- The romhack originally had the player collect 6/8 red coins
gLevelValues.exitCastleLevel = 6
gLevelValues.exitCastleArea = 1
gLevelValues.exitCastleWarpNode = 10

hook_event(HOOK_MARIO_UPDATE, function (m) m.peakHeight = m.pos.y end)
-- It cannot be determined if the romhack actually has star milestones. If these values are default, the romhack probably doesn't.

gBehaviorValues.ShowStarMilestones = true
gBehaviorValues.starsNeededForDialog.dialog1 = 1
gBehaviorValues.starsNeededForDialog.dialog2 = 3
gBehaviorValues.starsNeededForDialog.dialog3 = 8
gBehaviorValues.starsNeededForDialog.dialog4 = 30
gBehaviorValues.starsNeededForDialog.dialog5 = 50
gBehaviorValues.starsNeededForDialog.dialog6 = 70


gBehaviorValues.KingBobombFVel = 1216
gBehaviorValues.KingBobombYawVel = 600
gBehaviorValues.KingBobombHealth = 2
gBehaviorValues.KingWhompHealth = 4
gLevelValues.metalCapDuration = 750.0
gLevelValues.wingCapDuration = 360.0
-- It is entirely possible that cap stages do not start with their cap. Set each duration to 1 if this is the case.
gLevelValues.metalCapDuration = 600.0
gLevelValues.wingCapDuration = 1200.0
gLevelValues.vanishCapDuration = 600.0
-- Koopa the quick might not necessecarily follow the course's assigned path
gBehaviorValues.trajectories.KoopaBobTrajectory = get_trajectory("KoopaBoB_path")
gBehaviorValues.trajectories.KoopaThiTrajectory = get_trajectory("KoopaTHI_path")
