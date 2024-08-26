#initialize
tp @a[tag=player] 9000 101 9000

#game begin
scoreboard players add game_count config 1
scoreboard players set round_count tgttos 0
scoreboard players reset * tgttos_config
scoreboard players set team_rank tgttos_config 0

#work for players
tag @a[tag=player] add tgttos
clear @a[tag=tgttos]
gamemode adventure @a[tag=tgttos]

#trigger loop
function mmt_tgttos:on_tick

#game_start  ****need to change
function mmt_tgttos:game_process/one_use/round/prepare_round

#intro
function mmt_tgttos:game_process/intro

#team_score display
function mmt_tgttos:score_list/main
function mmt_tgttos:score_list/main
function mmt_tgttos:scoreboard/score_update/main
function mmt_tgttos:scoreboard/score_update/main

#scoreboard display
scoreboard objectives setdisplay sidebar.team.red tgttos_scoreboard_red
scoreboard objectives setdisplay sidebar.team.gold tgttos_scoreboard_orange
scoreboard objectives setdisplay sidebar.team.yellow tgttos_scoreboard_yellow
scoreboard objectives setdisplay sidebar.team.blue tgttos_scoreboard_blue
scoreboard objectives setdisplay sidebar.team.aqua tgttos_scoreboard_aqua
scoreboard objectives setdisplay sidebar.team.light_purple tgttos_scoreboard_pink
scoreboard objectives setdisplay sidebar.team.green tgttos_scoreboard_lime
scoreboard objectives setdisplay sidebar.team.dark_green tgttos_scoreboard_green
