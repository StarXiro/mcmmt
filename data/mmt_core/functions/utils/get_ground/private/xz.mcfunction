
scoreboard players operation temp core_utils_get_ground = dx core_utils_get_ground
scoreboard players operation temp2 core_utils_get_ground = dz core_utils_get_ground
execute if score temp core_utils_get_ground matches ..-1 run scoreboard players operation temp core_utils_get_ground *= -1 core_utils_get_ground
execute if score temp2 core_utils_get_ground matches ..-1 run scoreboard players operation temp2 core_utils_get_ground *= -1 core_utils_get_ground

execute if score temp core_utils_get_ground > temp2 core_utils_get_ground run function mmt_core:utils/get_ground/private/use_x

execute if score temp core_utils_get_ground < temp2 core_utils_get_ground run function mmt_core:utils/get_ground/private/use_z

function mmt_core:utils/get_ground/private/y_check

function mmt_core:utils/get_ground/private/collect
