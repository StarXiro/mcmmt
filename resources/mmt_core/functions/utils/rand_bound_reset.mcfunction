
scoreboard players set lower_bd core_utils_rand 0
scoreboard players set upper_bd core_utils_rand 99999999
scoreboard players operation range core_utils_rand = upper_bd core_utils_rand
scoreboard players operation range core_utils_rand -= lower_bd core_utils_rand
scoreboard players add range core_utils_rand 1