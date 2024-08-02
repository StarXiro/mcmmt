#start loop
#max score
execute as @e[scores={core_utils_sbs_temp=..2147483647}] run scoreboard players operation @s core_utils_sbs_sort > * core_utils_sbs_temp
execute as @r store result storage mcmmt:core_utils SBSconfig.score int 1 run scoreboard players get SBS_temp core_utils_sbs_sort
#loop ++
scoreboard players add loop_cnt core_utils_sbs_sort 1
execute as @r store result storage mcmmt:core_utils SBSconfig.loop_cnt int 1 run scoreboard players get loop_cnt core_utils_sbs_sort
#main
$execute as @e if score @s core_utils_sbs_temp = @s core_utils_sbs_sort run scoreboard players set $(loop_cnt) core_utils_sbs_sort $(score)
#remove
execute as @e if score @s core_utils_sbs_temp = @s core_utils_sbs_sort run scoreboard players reset @s core_utils_sbs_temp
execute if score loop_cnt core_utils_sbs_sort < loop_max core_utils_sbs_sort run function mmt_core:utils/sbs_loop