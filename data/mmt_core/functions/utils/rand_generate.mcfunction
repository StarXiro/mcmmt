
scoreboard players operation rand core_utils_rand *= r_mul core_utils_rand
scoreboard players operation rand core_utils_rand += r_add core_utils_rand
scoreboard players operation rand core_utils_rand %= r_mod core_utils_rand
scoreboard players operation result core_utils_rand = rand core_utils_rand
scoreboard players operation result core_utils_rand %= range core_utils_rand
scoreboard players operation result core_utils_rand += lower_bd core_utils_rand
execute store result storage mcmmt:core_utils rand.result int 1.0 run scoreboard players get result core_utils_rand
return 1
