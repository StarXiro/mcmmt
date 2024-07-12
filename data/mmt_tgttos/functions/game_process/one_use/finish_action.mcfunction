#
scoreboard players set @s finish_count 1
scoreboard players set all+1 finish_count 1
scoreboard players operation all+1 finish_count += all finish_count
tellraw @a [{"selector":"@s"},{"text":"第"},{"score":{"name":"all+1","objective":"finish_count"},"color":"gold"},{"text":"个到达了终点"}]
gamemode spectator @s