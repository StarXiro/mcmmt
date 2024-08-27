#main
tellraw @a ""
#update
execute as @e[type=marker,scores={tgttos_sum_score=0..}] run scoreboard players operation @s core_team_score += @s tgttos_sum_score
execute as @a[tag=tgttos] run scoreboard players operation @s core_player_score += @s tgttos_player_score

data modify storage mcmmt:core_utils SBSconfig.scoreboardname set value "core_team_score"
data modify storage mcmmt:core_utils SBSconfig.loop_max set value 8
function mmt_core:utils/sbs/main with storage mcmmt:core_utils SBSconfig
execute as @e[type=marker] if score @s core_team_score = 1 core_utils_sbs_rank run tellraw @a {"translate":"1. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_team_score"}}]}
execute as @e[type=marker] if score @s core_team_score = 2 core_utils_sbs_rank run tellraw @a {"translate":"2. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_team_score"}}]}
execute as @e[type=marker] if score @s core_team_score = 3 core_utils_sbs_rank run tellraw @a {"translate":"3. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_team_score"}}]}
execute as @e[type=marker] if score @s core_team_score = 4 core_utils_sbs_rank run tellraw @a {"translate":"4. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_team_score"}}]}
execute as @e[type=marker] if score @s core_team_score = 5 core_utils_sbs_rank run tellraw @a {"translate":"5. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_team_score"}}]}
execute as @e[type=marker] if score @s core_team_score = 6 core_utils_sbs_rank run tellraw @a {"translate":"6. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_team_score"}}]}
execute as @e[type=marker] if score @s core_team_score = 7 core_utils_sbs_rank run tellraw @a {"translate":"7. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_team_score"}}]}
execute as @e[type=marker] if score @s core_team_score = 8 core_utils_sbs_rank run tellraw @a {"translate":"8. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_team_score"}}]}