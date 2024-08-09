execute store result storage mcmmt:core_utils mg.index int 1 run scoreboard players get i core_utils_mg
scoreboard players add i core_utils_mg 1
function mmt_core:utils/mg/private/variable_get with storage mcmmt:core_utils mg
execute if data storage mcmmt:core_utils mg.name run function mmt_core:utils/mg/private/loop_body with storage mcmmt:core_utils mg
execute if data storage mcmmt:core_utils mg.name run function mmt_core:utils/mg/private/loop