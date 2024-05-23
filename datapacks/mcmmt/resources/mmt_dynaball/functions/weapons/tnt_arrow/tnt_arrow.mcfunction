
execute store result storage mcmmt:dynaball shot_tnt.motion[0] double 0.0001 run data get entity @s Motion[0] 7000
execute store result storage mcmmt:dynaball shot_tnt.motion[1] double 0.0001 run data get entity @s Motion[1] 7000
execute store result storage mcmmt:dynaball shot_tnt.motion[2] double 0.0001 run data get entity @s Motion[2] 7000
summon minecraft:tnt ~ ~ ~ {fuse:50, Tags:["dynaball_tnt", "dynaball_tnt_fly"]}
execute as @s at @s run data modify entity @e[tag=dynaball_tnt_fly, limit=1, distance=..0.5] Motion set from storage mcmmt:dynaball shot_tnt.motion
kill @s
