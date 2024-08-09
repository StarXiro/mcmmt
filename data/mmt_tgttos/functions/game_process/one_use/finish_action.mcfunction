#broadcast
scoreboard players set @s tgttos_finish_count 1

#finish_count update
function mmt_tgttos:scoreboard/main

#score_calculate
execute store result score score tgttos_config run data get storage mcmmt:tgttos max_score
execute as @r store result storage mcmmt:tgttos rank int 1 run scoreboard players get all tgttos_finish_count

#score_give
scoreboard players operation score tgttos_config -= all tgttos_finish_count
scoreboard players add score tgttos_config 1
scoreboard players operation @s core_player_score += score tgttos_config
scoreboard players operation @s tgttos_player_score += score tgttos_config
scoreboard players set @a tgttos_message_type 1
scoreboard players set @s tgttos_message_type 0

#broadcast
tellraw @a[scores={tgttos_message_type=1}] {"translate":" %s%s%s%s","with":[{"selector":"@s"},{"text":"第","color":"gray"},{"score":{"name":"all","objective":"tgttos_finish_count"},"color":"aqua"},{"text":"个到达了另一边！","color":"gray"}]}
tellraw @s {"translate":"[%s%s%s] %s%s%s","with":[{"text":"+","color":"gold"},{"score":{"name":"score","objective":"tgttos_config"},"color":"gold"},{"text":"分","color":"gold"},{"text":"你第","color":"gray"},{"score":{"name":"all","objective":"tgttos_finish_count"},"color":"aqua"},{"text":"个到达了另一边！","color":"gray"}]}
gamemode spectator @s

#team check
function mmt_tgttos:game_process/one_use/score_give with storage mcmmt:tgttos
scoreboard players set loop_cnt tgttos_config 0
function mmt_tgttos:game_process/loop/loop_check with storage mcmmt:tgttos
