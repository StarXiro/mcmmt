#broadcast
scoreboard players set @s tgttos_finish_count 1
scoreboard players set all2 tgttos_finish_count 1
scoreboard players operation all2 tgttos_finish_count += all tgttos_finish_count
tellraw @a [{"selector":"@s"},{"text":"第","color":"gray"},{"score":{"name":"all2","objective":"tgttos_finish_count"},"color":"gold"},{"text":"个到达了终点","color":"gray"}]
#score_give
execute store result score score tgttos_config run data get storage mcmmt:tgttos max_score
execute as @r store result storage mcmmt:tgttos rank int 1 run scoreboard players get all2 tgttos_finish_count
function mmt_tgttos:game_process/one_use/score_give with storage mcmmt:tgttos
scoreboard players operation score tgttos_config -= all tgttos_finish_count
scoreboard players operation @s core_player_score += score tgttos_config
gamemode spectator @s
