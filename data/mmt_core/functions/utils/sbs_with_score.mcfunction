#parameters need : scoreboardname \ loop_cnt \ score \ loop_max
scoreboard players set loop_cnt core_utils_sbs_sort 0
execute store result score loop_max core_utils_sbs_sort run data get storage mcmmt:core_utils SBSconfig.loop_max
scoreboard players reset * core_utils_sbs_temp
$execute as @e[scores={$(scoreboardname)=-2147483647..2147483647}] run scoreboard players operation @s core_utils_sbs_temp = @s $(scoreboardname)

#loop
function mmt_core:utils/sbs_loop with storage mcmmt:core_utils SBSconfig

