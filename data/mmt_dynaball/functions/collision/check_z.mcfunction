
scoreboard players operation temp dnb_system = @s dnb_tnt_motion_z
scoreboard players operation temp dnb_system -= @s dnb_tnt_last_mz

execute if score @s dnb_tnt_last_mz matches 0.. if score temp dnb_system matches 0.. run return fail
execute if score @s dnb_tnt_last_mz matches ..-1 if score temp dnb_system matches ..-1 run return fail

execute if score temp dnb_system matches ..-1 run scoreboard players operation temp dnb_system *= -1 dnb_system

execute if score temp dnb_system >= collision_limit dnb_system run return 1
return fail