tellraw @a ""
data modify storage mcmmt:core_utils mg.scoreboardname set value "tgttos_sum_score"
data modify storage mcmmt:core_utils mg.namelist set from storage mcmmt:core teamlist
data modify storage mcmmt:core_utils mg.displaynamelist set from storage mcmmt:core teamlist2
data modify storage mcmmt:core_utils mg.colorlist set from storage mcmmt:core teamcolor
function mmt_core:utils/mg/main
data modify storage mcmmt:core_utils SBSconfig.scoreboardname set value "tgttos_sum_score"
data modify storage mcmmt:core_utils SBSconfig.loop_max set value 8
function mmt_core:utils/sbs/main with storage mcmmt:core_utils SBSconfig
execute as @e[type=marker] if score @s tgttos_sum_score = 1 core_utils_sbs_rank run tellraw @a {"translate":"1. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"tgttos_sum_score"}}]}
execute as @e[type=marker] if score @s tgttos_sum_score = 2 core_utils_sbs_rank run tellraw @a {"translate":"2. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"tgttos_sum_score"}}]}
execute as @e[type=marker] if score @s tgttos_sum_score = 3 core_utils_sbs_rank run tellraw @a {"translate":"3. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"tgttos_sum_score"}}]}
execute as @e[type=marker] if score @s tgttos_sum_score = 4 core_utils_sbs_rank run tellraw @a {"translate":"4. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"tgttos_sum_score"}}]}
execute as @e[type=marker] if score @s tgttos_sum_score = 5 core_utils_sbs_rank run tellraw @a {"translate":"5. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"tgttos_sum_score"}}]}
execute as @e[type=marker] if score @s tgttos_sum_score = 6 core_utils_sbs_rank run tellraw @a {"translate":"6. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"tgttos_sum_score"}}]}
execute as @e[type=marker] if score @s tgttos_sum_score = 7 core_utils_sbs_rank run tellraw @a {"translate":"7. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"tgttos_sum_score"}}]}
execute as @e[type=marker] if score @s tgttos_sum_score = 8 core_utils_sbs_rank run tellraw @a {"translate":"8. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"tgttos_sum_score"}}]}