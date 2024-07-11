#player_count check /is must? y
scoreboard players reset * player_count
scoreboard players set @a[tag=player] player_count 1
scoreboard players operation all player_count += @a[tag=player] player_count
scoreboard players operation red player_count += @a[tag=player,team=red] player_count
scoreboard players operation orange player_count += @a[tag=player,team=orange] player_count
scoreboard players operation yellow player_count += @a[tag=player,team=yellow] player_count
scoreboard players operation lime player_count += @a[tag=player,team=lime] player_count
scoreboard players operation green player_count += @a[tag=player,team=green] player_count
scoreboard players operation aqua player_count += @a[tag=player,team=aqua] player_count
scoreboard players operation blue player_count += @a[tag=player,team=blue] player_count
scoreboard players operation pink player_count += @a[tag=player,team=pink] player_count

#finish_count
scoreboard players reset * finish_count
scoreboard players set @a[tag=player] finish_count 0
scoreboard players operation all finish_count += @a[tag=player] finish_count
scoreboard players operation red finish_count += @a[tag=player,team=red] finish_count
scoreboard players operation orange finish_count += @a[tag=player,team=orange] finish_count
scoreboard players operation yellow finish_count += @a[tag=player,team=yellow] finish_count
scoreboard players operation lime finish_count += @a[tag=player,team=lime] finish_count
scoreboard players operation green finish_count += @a[tag=player,team=green] finish_count
scoreboard players operation aqua finish_count += @a[tag=player,team=aqua] finish_count
scoreboard players operation blue finish_count += @a[tag=player,team=blue] finish_count
scoreboard players operation pink finish_count += @a[tag=player,team=pink] finish_count

#execute as @e[name="game_count"] store result storage tgttos:scoreboard game_count int 1 run scoreboard players get @s config    已弃用,此处保留以作提示。

#get scoreboard marks for data
execute as @r store result storage tgttos:scoreboard game_count int 1 run scoreboard players get game_count config
execute as @r store result storage tgttos:scoreboard round_count int 1 run scoreboard players get round_count tgttos
execute as @r store result storage tgttos:scoreboard minute int 1 run scoreboard players get minute tgttos
execute as @r store result storage tgttos:scoreboard second int 1 run scoreboard players get second tgttos
execute as @r store result storage tgttos:scoreboard player_count int 1 run scoreboard players get all player_count
execute as @r store result storage tgttos:scoreboard finish_count int 1 run scoreboard players get all finish_count

#get map_name
data modify storage tgttos:scoreboard map_name set from entity @e[scores={tgttosconfig=1},tag=map,limit=1] CustomName

#run 宏function
execute as @r run function mmt_tgttos:scoreboard/scoreboardextra with storage tgttos:scoreboard

#loop
schedule function mmt_tgttos:scoreboard/scoreboard 1t replace
