
# check1 
execute at @s if block ~ ~ ~ #mmt_core:all_air run return run kill @s
execute at @s if entity @e[type=minecraft:armor_stand, tag=dnb_sand_arrow_iter_alr, distance=..0.1] run return run kill @s
execute if score sand_arrow_bfs_lim dynaball_data matches ..0 run return fail

# check distance
# y
execute as @s store result score sand_arrow_temp dynaball_data run data get entity @s Pos[1] 1.0
scoreboard players operation sand_arrow_temp dynaball_data -= sand_arrow_ptr_y dynaball_data
execute if score sand_arrow_temp dynaball_data > sand_arrow_y_up_lim dynaball_data run return fail
execute if score sand_arrow_temp dynaball_data < sand_arrow_y_down_lim dynaball_data run return fail

# z & x
execute as @s store result score sand_arrow_temp dynaball_data run data get entity @s Pos[0] 1.0
scoreboard players operation sand_arrow_temp dynaball_data -= sand_arrow_ptr_x dynaball_data
execute if score sand_arrow_temp dynaball_data matches ..-1 run scoreboard players operation sand_arrow_temp dynaball_data *= negative dynaball_data
execute if score sand_arrow_temp dynaball_data > sand_arrow_unit_lim dynaball_data run return fail

execute as @s store result score sand_arrow_temp dynaball_data run data get entity @s Pos[2] 1.0
scoreboard players operation sand_arrow_temp dynaball_data -= sand_arrow_ptr_z dynaball_data
execute if score sand_arrow_temp dynaball_data matches ..-1 run scoreboard players operation sand_arrow_temp dynaball_data *= negative dynaball_data
execute if score sand_arrow_temp dynaball_data > sand_arrow_unit_lim dynaball_data run return fail

# summon next steps
execute at @s run summon minecraft:armor_stand ~ ~1 ~ {Marker:1b, Invisible:1b, Tags:["dnb_sand_arrow_iter"]}
execute at @s run summon minecraft:armor_stand ~ ~-1 ~ {Marker:1b, Invisible:1b, Tags:["dnb_sand_arrow_iter"]}
execute at @s run summon minecraft:armor_stand ~1 ~ ~ {Marker:1b, Invisible:1b, Tags:["dnb_sand_arrow_iter"]}
execute at @s run summon minecraft:armor_stand ~-1 ~ ~ {Marker:1b, Invisible:1b, Tags:["dnb_sand_arrow_iter"]}
execute at @s run summon minecraft:armor_stand ~ ~ ~-1 {Marker:1b, Invisible:1b, Tags:["dnb_sand_arrow_iter"]}
execute at @s run summon minecraft:armor_stand ~ ~ ~1 {Marker:1b, Invisible:1b, Tags:["dnb_sand_arrow_iter"]}

# replace sand
setblock ~ ~ ~ minecraft:gravel
scoreboard players remove sand_arrow_bfs_lim dynaball_data 1
tag @s add dnb_sand_arrow_iter_alr

# next
execute as @e[type=minecraft:armor_stand, tag=dnb_sand_arrow_iter] at @s run function mmt_dynaball:weapons/sand_arrow/bfs_iteration
