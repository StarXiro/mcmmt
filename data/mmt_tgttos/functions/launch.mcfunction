#initialize
tp @a 9000 101 9000

#game begin
scoreboard players add game_count config 1
scoreboard players set round_count tgttos 0
scoreboard players reset * tgttos_config
scoreboard players set team_rank tgttos_config 0

#work for players
tag @a[tag=player] add tgttos
clear @a[tag=tgttos]
gamemode adventure @a[tag=player]

#trigger loop
function mmt_tgttos:on_tick

#game_start  ****need to change
function mmt_tgttos:game_process/one_use/round/prepare_round
#intro
function mmt_tgttos:game_process/intro
