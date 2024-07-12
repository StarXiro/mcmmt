#initialize
tp @a 9000 101 9000

#game begin
scoreboard players add game_count config 1
scoreboard objectives setdisplay sidebar tgttosscoreboard

#work for players
tag @a[tag=player] add tgttos
clear @a[tag=tgttos] 
gamemode adventure @a[tag=player]

#scoreboard initialize
scoreboard players reset * finish_count
scoreboard players set @a[tag=player] finish_count 0

#trigger loop
function mmt_tgttos:on_tick
function mmt_tgttos:on_5tick

#intro
function mmt_tgttos:game_process/intro

#game_start  ****need to change
function mmt_tgttos:map/reload0
