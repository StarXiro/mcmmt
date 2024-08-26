#round_end to round_before // code for round_before
clear @a[tag=tgttos]

#map reload  ****need to update
function mmt_tgttos:map/reload1

#preparation
gamemode adventure @a[tag=tgttos]
stopsound @a
effect give @a[tag=tgttos] weakness infinite 255 true
effect give @a[tag=tgttos] saturation infinite 255 true
scoreboard players set @a[tag=tgttos] tgttos_finish_count 0

#round++
scoreboard players add round_count tgttos 1

#countdown
scoreboard players set countdown tgttos 419

#process change
scoreboard players set gameprocess tgttos 1


