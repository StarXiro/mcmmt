#
scoreboard players set @s finish_count 1
tellraw @a [{"selector":"@s"},{"text":"第"},{"score":{"name":"all","objective":"finish_count","color":"gold"}},{"text":"个到达了终点"}]