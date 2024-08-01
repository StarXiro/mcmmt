tellraw @s "当前个人积分:"
tellraw @s " "
execute as @a if score @s core_player_score = 1st core_score_rank run tellraw @a[scores={personalscore=1..}] {"translate":"1. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 2nd core_score_rank run tellraw @a[scores={personalscore=1..}] {"translate":"2. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 3rd core_score_rank run tellraw @a[scores={personalscore=1..}] {"translate":"3. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 4th core_score_rank run tellraw @a[scores={personalscore=1..}] {"translate":"4. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 5th core_score_rank run tellraw @a[scores={personalscore=1..}] {"translate":"5. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
tellraw @s " "
#tellraw @s {""}
scoreboard players set @s personalscore 0
scoreboard players enable @a personalscore