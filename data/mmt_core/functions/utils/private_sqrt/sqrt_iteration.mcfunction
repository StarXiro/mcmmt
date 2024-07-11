
scoreboard players operation temp1 core_utils_sqrt = input core_utils_sqrt
scoreboard players operation temp1 core_utils_sqrt /= x core_utils_sqrt
scoreboard players operation temp1 core_utils_sqrt /= constant core_utils_sqrt
scoreboard players operation temp2 core_utils_sqrt = x core_utils_sqrt
scoreboard players operation temp2 core_utils_sqrt /= constant core_utils_sqrt
scoreboard players operation x core_utils_sqrt = temp1 core_utils_sqrt
scoreboard players operation x core_utils_sqrt += temp2 core_utils_sqrt
scoreboard players operation temp1 core_utils_sqrt = x core_utils_sqrt
scoreboard players operation temp1 core_utils_sqrt -= last_x core_utils_sqrt
execute if score temp1 core_utils_sqrt matches -1..1 run return run scoreboard players operation result core_utils_sqrt = x core_utils_sqrt
scoreboard players operation last_x core_utils_sqrt = x core_utils_sqrt
function mmt_core:utils/sqrt_private/sqrt_iteration
