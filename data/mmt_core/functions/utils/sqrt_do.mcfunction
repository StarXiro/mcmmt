
execute if score input core_utils_sqrt matches ..0 run return run scoreboard players set result core_utils_sqrt 0
execute if score input core_utils_sqrt matches ..1 run return run scoreboard players set result core_utils_sqrt 1
scoreboard players operation x core_utils_sqrt = input core_utils_sqrt
scoreboard players operation last_x core_utils_sqrt = input core_utils_sqrt
function mmt_core:utils/private_sqrt/sqrt_iteration
