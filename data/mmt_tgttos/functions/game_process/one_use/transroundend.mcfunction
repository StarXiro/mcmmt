#round_end to round_before // code for round_before

#map reload  ****need to update
function mmt_tgttos:map/reload0

#preparation
tp @a 9000 101 9000
gamemode adventure @a[tag=player]
stopsound @a
effect give @a[tag=tgttos] weakness infinite 255 true
effect give @a[tag=tgttos] saturation infinite 255 true

#round++
scoreboard players add round_count tgttos 1

#countdown
scoreboard players set countdown tgttos 419

#process change
scoreboard players set gameprocess tgttos 1


