tp @a -4970 107 -4976
#further trans

scoreboard players add @e[name="game_count"] config 1
scoreboard players add @e[name="round_count"] config 1
scoreboard objectives setdisplay sidebar CACdisplay
tag @a[tag=player] add CAC
clear @a[tag=CAC]
gamemode adventure @a[tag=CAC]
function mmt_creeperandcat:on_second

function mmt_creeperandcat:intro
