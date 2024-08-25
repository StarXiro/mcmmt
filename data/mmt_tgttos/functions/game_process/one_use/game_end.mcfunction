#round to game_end // code for game_end

#main
scoreboard players reset * tgttos_config
scoreboard players set team_rank tgttos_config 0
scoreboard players set gameprocess tgttos -1
schedule clear mmt_tgttos:on_tick
function mmt_tgttos:stop