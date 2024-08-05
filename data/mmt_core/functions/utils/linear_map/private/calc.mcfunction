
# to_lower + ( dis / fromdis * to_dis)

scoreboard players operation temp1 core_utils_linear_map = to_upper core_utils_linear_map
scoreboard players operation temp1 core_utils_linear_map -= to_lower core_utils_linear_map
scoreboard players operation temp3 core_utils_linear_map = from_upper core_utils_linear_map
scoreboard players operation temp3 core_utils_linear_map -= from_lower core_utils_linear_map
scoreboard players operation temp2 core_utils_linear_map = input core_utils_linear_map
scoreboard players operation temp2 core_utils_linear_map -= from_lower core_utils_linear_map
scoreboard players operation temp2 core_utils_linear_map *= temp1 core_utils_linear_map
scoreboard players operation temp2 core_utils_linear_map /= temp3 core_utils_linear_map
scoreboard players operation temp2 core_utils_linear_map += to_lower core_utils_linear_map
scoreboard players operation result core_utils_linear_map = temp2 core_utils_linear_map
