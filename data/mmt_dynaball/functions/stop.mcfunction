
# stop game
function mmt_dynaball:main_loop/stop_round
function mmt_dynaball:game_end/game_end

# reset scores
scoreboard players reset * dnb_total_score
scoreboard players reset * dnb_team_score
scoreboard players reset * dnb_player_score
# reset game running flg
scoreboard players set game_running dnb_system 0
# remove spectator team
team remove dnb_spectators
