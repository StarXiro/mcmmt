$execute if score $(teamname) tgttos_finish_count = $(teamname) tgttos_player_count run scoreboard players add team_rank tgttos_config 1
$execute if score $(teamname) tgttos_finish_count = $(teamname) tgttos_player_count run execute if score $(teamname) tgttos_finish_count = $(teamname) tgttos_player_count run execute store result storage mcmmt:tgttos teamcheck.rank int 1 run scoreboard players get team_rank tgttos_config
$execute if score $(teamname) tgttos_finish_count = $(teamname) tgttos_player_count run execute unless score $(teamname) tgttos_config matches 1 run function mmt_tgttos:game_process/one_use/team_score with storage mcmmt:tgttos teamcheck