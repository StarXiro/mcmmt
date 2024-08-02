#parameters need : scoreboardname \
$execute as @e[scores={$(scoreboardname)=..2147483647}] run scoreboard players operation @s core_utils_sbs_temp = @s $(scoreboardname)
execute as @e[scores={core_utils_sbs_temp=..2147483647}] run scoreboard players operation @s core_utils_sbs_sort > * core_utils_sbs_temp
