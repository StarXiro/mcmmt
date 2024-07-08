#timer mod -3时为准备阶段
stopsound @a
effect give @a[tag=tgttos] weakness infinite 255 true
effect give @a[tag=tgttos] saturation infinite 255 true
scoreboard players set countdown timer 300
scoreboard players set timemode timer -2
