#round to game_end // code for game_end

#score add for core
execute as @e[type=marker,scores={tgttos_sum_score=0..}] run scoreboard players operation @s core_team_score += @s tgttos_sum_score
execute as @a[tag=tgttos] run scoreboard players operation @s core_player_score += @s tgttos_player_score

#main
scoreboard players reset * tgttos_config
scoreboard players set team_rank tgttos_config 0
scoreboard players set gameprocess tgttos -1
schedule clear mmt_tgttos:on_tick
function mmt_tgttos:stop