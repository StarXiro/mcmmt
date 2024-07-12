

summon minecraft:chicken ~ ~ ~ {NoGravity:1b, Tags:["bomb_chick_a", "bomb_chick"]}
execute store result score @e[tag=bomb_chick_a, distance=..0.5, limit=1] dnb_motion_x run data get entity @s Motion[0] 200.0
execute store result score @e[tag=bomb_chick_a, distance=..0.5, limit=1] dnb_motion_z run data get entity @s Motion[2] 200.0
tp @e[tag=bomb_chick_a, distance=..0.5, limit=1] ~ ~20 ~
kill @s
