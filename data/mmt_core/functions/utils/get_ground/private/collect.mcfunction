
execute if score axis core_utils_get_ground matches 0 run return run function mmt_core:utils/get_ground/private/not_full

scoreboard players set offset core_utils_get_ground 1
scoreboard players operation pos core_utils_get_ground = axis core_utils_get_ground
execute if score axis core_utils_get_ground matches ..-1 run scoreboard players operation pos core_utils_get_ground *= -1 core_utils_get_ground
execute if score axis core_utils_get_ground matches ..-1 run scoreboard players set offset core_utils_get_ground -1
scoreboard players remove pos core_utils_get_ground 1

execute store result storage mcmmt:core_utils get_ground.pos[0] int 1.0 run data get entity @s Pos[0] 1.0
execute store result storage mcmmt:core_utils get_ground.pos[1] int 1.0 run data get entity @s Pos[1] 1.0
execute store result storage mcmmt:core_utils get_ground.pos[2] int 1.0 run data get entity @s Pos[2] 1.0

execute store result storage mcmmt:core_utils get_ground.macro_bag.pos int 1.0 run scoreboard players get pos core_utils_get_ground
function mmt_core:utils/get_ground/private/apply_offset with storage mcmmt:core_utils get_ground.macro_bag

data modify storage mcmmt:core_utils get_ground.map.x set from storage mcmmt:core_utils get_ground.pos[0]
data modify storage mcmmt:core_utils get_ground.map.y set from storage mcmmt:core_utils get_ground.pos[1]
data modify storage mcmmt:core_utils get_ground.map.z set from storage mcmmt:core_utils get_ground.pos[2]
