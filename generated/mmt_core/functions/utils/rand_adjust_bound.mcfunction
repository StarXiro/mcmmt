
# args:
# lower I
# upper I

$scoreboard players set lower_bd core_utils_rand $(lower)
$scoreboard players set upper_bd core_utils_rand $(upper)
scoreboard players operation range core_utils_rand = upper_bd core_utils_rand
scoreboard players operation range core_utils_rand -= lower_bd core_utils_rand
scoreboard players add range core_utils_rand 1