#round_end to round_before // code for round_before

#preparation
stopsound @a
effect give @a[tag=tgttos] weakness infinite 255 true
effect give @a[tag=tgttos] saturation infinite 255 true

#round++
scoreboard players add round_count tgttos 1

#countdown
scoreboard players set countdown tgttos 419

#process change
scoreboard players set gameprocess tgttos 1


