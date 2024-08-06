#tgttos_player_count check /is must? y
scoreboard players reset * tgttos_player_count
scoreboard players set @a[tag=player] tgttos_player_count 1
scoreboard players operation all tgttos_player_count += @a[tag=player] tgttos_player_count
scoreboard players operation red tgttos_player_count += @a[tag=player,team=red] tgttos_player_count
scoreboard players operation orange tgttos_player_count += @a[tag=player,team=orange] tgttos_player_count
scoreboard players operation yellow tgttos_player_count += @a[tag=player,team=yellow] tgttos_player_count
scoreboard players operation lime tgttos_player_count += @a[tag=player,team=lime] tgttos_player_count
scoreboard players operation green tgttos_player_count += @a[tag=player,team=green] tgttos_player_count
scoreboard players operation aqua tgttos_player_count += @a[tag=player,team=aqua] tgttos_player_count
scoreboard players operation blue tgttos_player_count += @a[tag=player,team=blue] tgttos_player_count
scoreboard players operation pink tgttos_player_count += @a[tag=player,team=pink] tgttos_player_count

#tgttos_finish_count
scoreboard players reset all tgttos_finish_count
scoreboard players reset red tgttos_finish_count
scoreboard players reset orange tgttos_finish_count
scoreboard players reset yellow tgttos_finish_count
scoreboard players reset lime tgttos_finish_count
scoreboard players reset green tgttos_finish_count
scoreboard players reset aqua tgttos_finish_count
scoreboard players reset blue tgttos_finish_count
scoreboard players reset pink tgttos_finish_count
scoreboard players operation all tgttos_finish_count += @a[tag=player] tgttos_finish_count
scoreboard players operation red tgttos_finish_count += @a[tag=player,team=red] tgttos_finish_count
scoreboard players operation orange tgttos_finish_count += @a[tag=player,team=orange] tgttos_finish_count
scoreboard players operation yellow tgttos_finish_count += @a[tag=player,team=yellow] tgttos_finish_count
scoreboard players operation lime tgttos_finish_count += @a[tag=player,team=lime] tgttos_finish_count
scoreboard players operation green tgttos_finish_count += @a[tag=player,team=green] tgttos_finish_count
scoreboard players operation aqua tgttos_finish_count += @a[tag=player,team=aqua] tgttos_finish_count
scoreboard players operation blue tgttos_finish_count += @a[tag=player,team=blue] tgttos_finish_count
scoreboard players operation pink tgttos_finish_count += @a[tag=player,team=pink] tgttos_finish_count

#execute as @e[name="game_count"] store result storage mcmmt:tgttos scoreboard.game_count int 1 run scoreboard players get @s config    已弃用,此处保留以作提示。

#get scoreboard marks for data
execute as @r store result storage mcmmt:tgttos scoreboard.game_count int 1 run scoreboard players get game_count core_game_config
execute as @r store result storage mcmmt:tgttos scoreboard.round_count int 1 run scoreboard players get round_count tgttos
execute as @r store result storage mcmmt:tgttos scoreboard.minute int 1 run scoreboard players get minute tgttos
execute as @r store result storage mcmmt:tgttos scoreboard.second int 1 run scoreboard players get second tgttos
execute as @r store result storage mcmmt:tgttos scoreboard.tgttos_player_count int 1 run scoreboard players get all tgttos_player_count
execute as @r store result storage mcmmt:tgttos scoreboard.tgttos_finish_count int 1 run scoreboard players get all tgttos_finish_count

#get map_name
data modify storage mcmmt:tgttos scoreboard.map_name set from entity @e[scores={tgttos_config=1},tag=map,limit=1] CustomName

#run 宏function
execute as @r run function mmt_tgttos:scoreboard/scoreboardextra with storage mcmmt:tgttos scoreboard