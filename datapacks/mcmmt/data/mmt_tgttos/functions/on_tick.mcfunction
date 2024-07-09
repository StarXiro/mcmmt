function mmt_tgttos:time_check/timer
function mmt_tgttos:scoreboard/scoreboard
function mmt_tgttos:item/chaser
execute as @a[tag=tgttos,x=8958,z=8936,dx=150,dz=130,y=20,dy=40] run function mmt_tgttos:death_check/death_check
schedule function mmt_tgttos:on_tick 1t replace