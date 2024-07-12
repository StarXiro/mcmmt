
execute store result storage mcmmt:dynaball bomb_egg.motion[0] double 0.001 run scoreboard players get @s dnb_motion_x
execute store result storage mcmmt:dynaball bomb_egg.motion[2] double 0.001 run scoreboard players get @s dnb_motion_z
data modify entity @s Motion set from storage mcmmt:dynaball bomb_egg.motion
