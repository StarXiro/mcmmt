
# x
execute store result score temp2 core_utils_get_ground run data get entity @s Pos[0]
scoreboard players operation temp2 core_utils_get_ground += ix core_utils_get_ground
execute store result storage mcmmt:core_utils get_ground.pos[0] int 1.0 run scoreboard players get temp2 core_utils_get_ground

# z
execute store result score temp2 core_utils_get_ground run data get entity @s Pos[2]
scoreboard players operation temp2 core_utils_get_ground += iz core_utils_get_ground
execute store result storage mcmmt:core_utils get_ground.pos[2] int 1.0 run scoreboard players get temp2 core_utils_get_ground

# y
execute store result score temp2 core_utils_get_ground run data get entity @s Pos[1]
execute store result storage mcmmt:core_utils get_ground.pos[1] int 1.0 run scoreboard players get temp2 core_utils_get_ground

data modify storage mcmmt:core_utils get_ground.map.x set from storage mcmmt:core_utils get_ground.pos[0]
data modify storage mcmmt:core_utils get_ground.map.y set from storage mcmmt:core_utils get_ground.pos[1]
data modify storage mcmmt:core_utils get_ground.map.z set from storage mcmmt:core_utils get_ground.pos[2]
