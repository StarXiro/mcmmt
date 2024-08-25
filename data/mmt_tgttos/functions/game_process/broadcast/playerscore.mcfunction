tellraw @a " "
data modify storage mcmmt:core_utils SBSconfig.scoreboardname set value "tgttos_player_score"
data modify storage mcmmt:core_utils SBSconfig.loop_max set value 32
function mmt_core:utils/sbs/main with storage mcmmt:core_utils SBSconfig
execute as @a if score @s tgttos_player_score = 1 core_utils_sbs_rank run tellraw @a {"translate":"1. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"tgttos_player_score"}}]}
execute as @a if score @s tgttos_player_score = 2 core_utils_sbs_rank run tellraw @a {"translate":"2. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"tgttos_player_score"}}]}
execute as @a if score @s tgttos_player_score = 3 core_utils_sbs_rank run tellraw @a {"translate":"3. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"tgttos_player_score"}}]}
execute as @a if score @s tgttos_player_score = 4 core_utils_sbs_rank run tellraw @a {"translate":"4. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"tgttos_player_score"}}]}
execute as @a if score @s tgttos_player_score = 5 core_utils_sbs_rank run tellraw @a {"translate":"5. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"tgttos_player_score"}}]}
tellraw @a " "