tp @a -4970 107 -4976
#further trans

scoreboard objectives setdisplay sidebar CACdisplay
tag @a[tag=player] add CAC
clear @a[tag=CAC]
gamemode adventure @a[tag=CAC]
scoreboard players set timemode CACconfig 1
scoreboard players set round CACconfig 0
scoreboard players set second CACconfig 30
scoreboard players set playercount CACconfig 0
scoreboard players set game_count CACconfig 1
execute as @a[tag=player] run scoreboard players add playercount CACconfig 1

function mmt_creeperandcat:on_second

function mmt_creeperandcat:intro

function mmt_creeperandcat:scoreboard/scoreboard