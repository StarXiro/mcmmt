execute store result storage mcmmt:tgttos scoreboard.index int 1 run scoreboard players get i tgttos_config
scoreboard players add i tgttos_config 1
scoreboard players reset all tgttos_finish_count
scoreboard players operation all tgttos_finish_count += @a[tag=player] tgttos_finish_count
scoreboard players reset all tgttos_player_count
scoreboard players set @a[tag=player] tgttos_player_count 1
scoreboard players operation all tgttos_player_count += @a[tag=player] tgttos_player_count

#run 宏function
function mmt_tgttos:scoreboard/loop/variables_set with storage mcmmt:tgttos scoreboard
function mmt_tgttos:scoreboard/loop/loop_body with storage mcmmt:tgttos scoreboard
function mmt_tgttos:scoreboard/loop/for_team with storage mcmmt:tgttos scoreboard