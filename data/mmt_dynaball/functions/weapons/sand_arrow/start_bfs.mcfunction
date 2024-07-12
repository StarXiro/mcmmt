
scoreboard players set sand_arrow_bfs_lim dynaball_data 25
tag @s add dnb_sand_arrow_iter

# store position
execute store result score sand_arrow_ptr_x dynaball_data as @s run data get entity @s Pos[0] 1.0
execute store result score sand_arrow_ptr_y dynaball_data as @s run data get entity @s Pos[1] 1.0
execute store result score sand_arrow_ptr_z dynaball_data as @s run data get entity @s Pos[2] 1.0

execute as @s at @s run function mmt_dynaball:weapons/sand_arrow/bfs_iteration

# clean iter (self included)
kill @e[type=minecraft:armor_stand, tag=dnb_sand_arrow_iter]
