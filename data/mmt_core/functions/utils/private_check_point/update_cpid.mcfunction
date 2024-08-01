
tag @s add cu_cp_valid
execute if score force_ascend core_utils_check_point matches 0 run return run scoreboard players operation @s core_utils_check_point_id = index core_utils_check_point

scoreboard players operation temp core_utils_check_point = @s core_utils_check_point_id
scoreboard players add temp core_utils_check_point 1
execute if score index core_utils_check_point = temp core_utils_check_point run return run scoreboard players operation @s core_utils_check_point_id = index core_utils_check_point

tag @s remove cu_cp_valid
