#initialize
tp @a 9000 101 9000

#game begin
scoreboard players add game_count config 1
scoreboard objectives setdisplay sidebar tgttos_scoreboard

#work for players
tag @a[tag=player] add tgttos
clear @a[tag=tgttos]
gamemode adventure @a[tag=player]

#trigger loop
function mmt_tgttos:on_tick
function mmt_tgttos:on_5tick

#game_start  ****need to change
function mmt_tgttos:game_process/one_use/transroundend

#intro
function mmt_tgttos:game_process/intro
