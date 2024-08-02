tellraw @s "当前个人积分:"
tellraw @s " "
data modify storage mcmmt:core_utils SBSconfig set value {loop_max:32,scoreboardname:"core_player_score",loop_cnt:0,score:0}
function mmt_core:utils/sbs_with_score with storage mcmmt:core_utils SBSconfig
execute as @a if score @s core_player_score = 1 core_utils_sbs_rank run tellraw @a[scores={personalscore=1..}] {"translate":"1. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 2 core_utils_sbs_rank run tellraw @a[scores={personalscore=1..}] {"translate":"2. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 3 core_utils_sbs_rank run tellraw @a[scores={personalscore=1..}] {"translate":"3. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 4 core_utils_sbs_rank run tellraw @a[scores={personalscore=1..}] {"translate":"4. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 5 core_utils_sbs_rank run tellraw @a[scores={personalscore=1..}] {"translate":"5. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
tellraw @s " "
#tellraw @s {""}
scoreboard players set @s personalscore 0
scoreboard players enable @a personalscore