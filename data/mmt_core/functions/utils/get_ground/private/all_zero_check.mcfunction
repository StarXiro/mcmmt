
execute store result storage mcmmt:core_utils get_ground.xie.x int 1.0 run scoreboard players get ix core_utils_get_ground
execute store result storage mcmmt:core_utils get_ground.xie.z int 1.0 run scoreboard players get iz core_utils_get_ground

scoreboard players set temp2 core_utils_get_ground 1

scoreboard players operation temp core_utils_get_ground = sx core_utils_get_ground
execute if score temp core_utils_get_ground matches ..-1 run scoreboard players operation temp core_utils_get_ground *= -1 core_utils_get_ground
execute if score temp core_utils_get_ground < bound core_utils_get_ground run scoreboard players set temp2 core_utils_get_ground 0

scoreboard players operation temp core_utils_get_ground = sz core_utils_get_ground
execute if score temp core_utils_get_ground matches ..-1 run scoreboard players operation temp core_utils_get_ground *= -1 core_utils_get_ground
execute if score temp core_utils_get_ground < bound core_utils_get_ground run scoreboard players set temp2 core_utils_get_ground 0

scoreboard players set temp core_utils_get_ground 0
function mmt_core:utils/get_ground/private/xie with storage mcmmt:core_utils get_ground.xie

execute if score temp core_utils_get_ground matches 1 if score temp2 core_utils_get_ground matches 1 if block ~ ~ ~ #mmt_core:all_air run return run function mmt_core:utils/get_ground/private/use_xie

execute if score temp core_utils_get_ground matches 1 run scoreboard players operation dx core_utils_get_ground = sx core_utils_get_ground
execute if score temp core_utils_get_ground matches 1 run scoreboard players operation dz core_utils_get_ground = sz core_utils_get_ground

function mmt_core:utils/get_ground/private/xz
