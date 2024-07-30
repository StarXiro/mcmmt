setblock ~ ~ ~ barrier
setblock ~ ~ ~ barrier
setblock ~ ~ ~ barrier
setblock ~ ~ ~ barrier

tp @a ~ ~ ~
#map view place
scoreboard objectives setdisplay sidebar skydisplay

tag @a[tag=player] add SKB
clear @a[tag=SKB]
gamemode adventure @a[tag=SKB]
effect give @a[tag=SKB] invisibility infinite 1 true

scoreboard players set ticker SKBconfig 0
scoreboard players set second SKBconfig 0
function mmt_skybattle:on_second

function mmt_skybattle:intro
