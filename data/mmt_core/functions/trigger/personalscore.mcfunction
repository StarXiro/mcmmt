tellraw @s "当前个人积分:"
tellraw @s " "
data modify storage mcmmt:core_utils SBSconfig.scoreboardname set value "core_player_score"
data modify storage mcmmt:core_utils SBSconfig.loop_max set value 32
function mmt_core:utils/sbs/main with storage mcmmt:core_utils SBSconfig
execute as @a if score @s core_player_score = 1 core_utils_sbs_rank run tellraw @a[scores={personalscore=1..}] {"translate":"1. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 2 core_utils_sbs_rank run tellraw @a[scores={personalscore=1..}] {"translate":"2. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 3 core_utils_sbs_rank run tellraw @a[scores={personalscore=1..}] {"translate":"3. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 4 core_utils_sbs_rank run tellraw @a[scores={personalscore=1..}] {"translate":"4. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 5 core_utils_sbs_rank run tellraw @a[scores={personalscore=1..}] {"translate":"5. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
tellraw @s " "
tellraw @s {"translate":"%s. %s: %s","with":[{"score":{"name":"@s","objective":"core_utils_sbs_prank"}},{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
scoreboard players set @s personalscore 0
scoreboard players enable @a personalscore