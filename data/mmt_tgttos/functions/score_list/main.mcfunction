#准备活动
data remove storage mcmmt:tgttos team
scoreboard players set j tgttos 0
scoreboard players reset * tgttos_team_list
data modify storage mcmmt:tgttos team.list set value []

#排名计算
data modify storage mcmmt:core_utils mg.scoreboardname set value "tgttos_sum_score"
data modify storage mcmmt:core_utils mg.namelist set from storage mcmmt:core teamlist
data modify storage mcmmt:core_utils mg.displaynamelist set from storage mcmmt:core teamlist2
data modify storage mcmmt:core_utils mg.colorlist set from storage mcmmt:core teamcolor
function mmt_core:utils/mg/main
data modify storage mcmmt:core_utils SBSconfig.scoreboardname set value "tgttos_sum_score"
data modify storage mcmmt:core_utils SBSconfig.loop_max set value 8
function mmt_core:utils/sbs/main with storage mcmmt:core_utils SBSconfig

#变量
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_utils_sbs_prank matches 1 run function mmt_tgttos:score_list/private/variables_set
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_utils_sbs_prank matches 2 run function mmt_tgttos:score_list/private/variables_set
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_utils_sbs_prank matches 3 run function mmt_tgttos:score_list/private/variables_set
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_utils_sbs_prank matches 4 run function mmt_tgttos:score_list/private/variables_set
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_utils_sbs_prank matches 5 run function mmt_tgttos:score_list/private/variables_set
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_utils_sbs_prank matches 6 run function mmt_tgttos:score_list/private/variables_set
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_utils_sbs_prank matches 7 run function mmt_tgttos:score_list/private/variables_set
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_utils_sbs_prank matches 8 run function mmt_tgttos:score_list/private/variables_set
