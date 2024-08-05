#start loop
#max score
scoreboard players reset @e[scores={core_utils_sbs_sort=-2147483648..2147483647}] core_utils_sbs_sort
execute as @e[scores={core_utils_sbs_temp=-2147483648..2147483647}] run scoreboard players operation @s core_utils_sbs_sort > @e[scores={core_utils_sbs_temp=-2147483648..2147483647}] core_utils_sbs_temp
execute as @r store result storage mcmmt:core_utils SBSconfig.maxscore int 1 run scoreboard players get @r[scores={core_utils_sbs_sort=-2147483648..2147483647}] core_utils_sbs_sort

#loop ++
scoreboard players add loop_cnt core_utils_sbs_sort 1
execute as @r store result storage mcmmt:core_utils SBSconfig.loop_cnt int 1 run scoreboard players get loop_cnt core_utils_sbs_sort

#generate
execute as @e[scores={core_utils_sbs_temp=-2147483648..2147483647}] if score @s core_utils_sbs_temp = @s core_utils_sbs_sort run function mmt_core:utils/sbs/private/generate with storage mcmmt:core_utils SBSconfig

#remove
execute if score loop_cnt core_utils_sbs_sort < loop_max core_utils_sbs_sort run function mmt_core:utils/sbs/private/loop