
execute as @s store result score @s dnb_tnt_motion_x run data get entity @s Motion[0] 10000
execute as @s store result score @s dnb_tnt_motion_y run data get entity @s Motion[1] 10000
execute as @s store result score @s dnb_tnt_motion_z run data get entity @s Motion[2] 10000

execute if function mmt_dynaball:collision/avoid run function mmt_dynaball:collision/check

scoreboard players operation @s dnb_tnt_last_mx = @s dnb_tnt_motion_x
scoreboard players operation @s dnb_tnt_last_my = @s dnb_tnt_motion_y
scoreboard players operation @s dnb_tnt_last_mz = @s dnb_tnt_motion_z
