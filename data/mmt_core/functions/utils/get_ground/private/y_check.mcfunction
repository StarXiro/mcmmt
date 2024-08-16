
scoreboard players operation temp core_utils_get_ground = dy core_utils_get_ground
execute if score temp core_utils_get_ground matches ..-1 run scoreboard players operation temp core_utils_get_ground *= -1 core_utils_get_ground

execute if score temp core_utils_get_ground > candidate core_utils_get_ground run function mmt_core:utils/get_ground/private/use_y
