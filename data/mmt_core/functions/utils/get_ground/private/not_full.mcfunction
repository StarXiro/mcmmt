
execute if block ~ ~ ~ #mmt_core:all_air run return fail

execute store result storage mcmmt:core_utils get_ground.pos[0] int 1.0 run data get entity @s Pos[0] 1.0
execute store result storage mcmmt:core_utils get_ground.pos[1] int 1.0 run data get entity @s Pos[1] 1.0
execute store result storage mcmmt:core_utils get_ground.pos[2] int 1.0 run data get entity @s Pos[2] 1.0

data modify storage mcmmt:core_utils get_ground.map.x set from storage mcmmt:core_utils get_ground.pos[0]
data modify storage mcmmt:core_utils get_ground.map.y set from storage mcmmt:core_utils get_ground.pos[1]
data modify storage mcmmt:core_utils get_ground.map.z set from storage mcmmt:core_utils get_ground.pos[2]
