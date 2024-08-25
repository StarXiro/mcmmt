#playercount set
$scoreboard players reset $(team) tgttos_player_count
$scoreboard players operation $(team) tgttos_player_count += @a[tag=player,team=$(team)] tgttos_player_count

#finishcount set
$scoreboard players reset $(team) tgttos_finish_count
$scoreboard players operation $(team) tgttos_finish_count += @a[tag=player,team=$(team)] tgttos_finish_count

#score set
$scoreboard players reset $(team) tgttos_sum_score
$scoreboard players operation $(team) tgttos_sum_score += @a[tag=player,team=$(team)] tgttos_player_score

#get scoreboard marks for storage
execute store result storage mcmmt:tgttos scoreboard.game_count int 1 run scoreboard players get game_count core_game_config
execute store result storage mcmmt:tgttos scoreboard.round_count int 1 run scoreboard players get round_count tgttos
execute store result storage mcmmt:tgttos scoreboard.minute int 1 run scoreboard players get minute tgttos
execute store result storage mcmmt:tgttos scoreboard.second int 1 run scoreboard players get second tgttos
execute store result storage mcmmt:tgttos scoreboard.player_count int 1 run scoreboard players get all tgttos_player_count
execute store result storage mcmmt:tgttos scoreboard.finish_count int 1 run scoreboard players get all tgttos_finish_count