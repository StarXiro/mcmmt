#start loop
schedule function mmt_core:utils/sbs_loop 1t

#max score
scoreboard players set @a[scores={core_utils_sbs_sort=-2147483648..2147483647}] core_utils_sbs_sort -2147483640
execute as @e[scores={core_utils_sbs_temp=-2147483648..2147483647}] run scoreboard players operation @s core_utils_sbs_sort > * core_utils_sbs_temp
execute as @r store result storage mcmmt:core_utils SBSconfig.score int 1 run scoreboard players get @r[scores={core_utils_sbs_sort=-2147483648..2147483647}] core_utils_sbs_sort

#loop ++
scoreboard players add loop_cnt core_utils_sbs_sort 1
execute as @r store result storage mcmmt:core_utils SBSconfig.loop_cnt int 1 run scoreboard players get loop_cnt core_utils_sbs_sort

#main
$execute as @e[scores={core_utils_sbs_temp=-2147483648..2147483647}] if score @s core_utils_sbs_temp = @s core_utils_sbs_sort run scoreboard players set $(loop_cnt) core_utils_sbs_rank $(score)

#remove
execute as @e[scores={core_utils_sbs_temp=-2147483648..2147483647}] if score @s core_utils_sbs_temp = @s core_utils_sbs_sort run scoreboard players set @s core_utils_sbs_temp -9999
execute if score loop_cnt core_utils_sbs_sort >= loop_max core_utils_sbs_sort run schedule clear mmt_core:utils/sbs_loop