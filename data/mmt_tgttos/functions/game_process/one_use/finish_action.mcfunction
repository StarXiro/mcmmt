#
scoreboard players set @s finish_count 1
scoreboard players set all2 finish_count 1
scoreboard players operation all2 finish_count += all finish_count
tellraw @a [{"selector":"@s"},{"text":"第","color":"gray"},{"score":{"name":"all2","objective":"finish_count"},"color":"gold"},{"text":"个到达了终点","color":"gray"}]
gamemode spectator @s