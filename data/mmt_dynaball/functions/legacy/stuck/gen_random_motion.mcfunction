
function mmt_core:utils/rand_generate
scoreboard players operation rand_positive dynaball_data = result core_utils_rand
scoreboard players operation rand_positive dynaball_data %= rand_positive_mod dynaball_data
execute if score rand_positive dynaball_data matches 0 run scoreboard players remove rand_positive dynaball_data 1

function mmt_core:utils/rand_generate
scoreboard players operation rand_temp dynaball_data = result core_utils_rand
scoreboard players operation rand_temp dynaball_data %= rand_motion_mod dynaball_data
scoreboard players operation rand_temp dynaball_data *= rand_positive dynaball_data
execute store result storage mcmmt:dynaball random_motion[0] double 0.001 run scoreboard players get rand_temp dynaball_data

function mmt_core:utils/rand_generate
scoreboard players operation rand_positive dynaball_data = result core_utils_rand
scoreboard players operation rand_positive dynaball_data %= rand_positive_mod dynaball_data
execute if score rand_positive dynaball_data matches 0 run scoreboard players remove rand_positive dynaball_data 1

function mmt_core:utils/rand_generate
scoreboard players operation rand_temp dynaball_data = result core_utils_rand
scoreboard players operation rand_temp dynaball_data %= rand_motion_mod dynaball_data
scoreboard players operation rand_temp dynaball_data *= rand_positive dynaball_data
execute store result storage mcmmt:dynaball random_motion[2] double 0.001 run scoreboard players get rand_temp dynaball_data