#
scoreboard players set @s tgttos_finish_count 1
scoreboard players set all2 tgttos_finish_count 1
scoreboard players operation all2 tgttos_finish_count += all tgttos_finish_count
tellraw @a [{"selector":"@s"},{"text":"第","color":"gray"},{"score":{"name":"all2","objective":"tgttos_finish_count"},"color":"gold"},{"text":"个到达了终点","color":"gray"}]
scoreboard players set score tgttos_config 
scoreboard players operation score tgttos_config += all tgttos_player_count
scoreboard players operation score tgttos_config -= all2 tgttos_finish_count
gamemode spectator @s
