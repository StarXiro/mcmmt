#functions
function mmt_tgttos:time/timer
function mmt_tgttos:scoreboard/main
function mmt_tgttos:item/chaser
execute if score countdown tgttos matches -1 run execute if score gameprocess tgttos matches 1 run function mmt_tgttos:game_process/one_use/transroundbefore
execute if score countdown tgttos matches -1 run execute if score gameprocess tgttos matches 2 run function mmt_tgttos:game_process/one_use/transroundstart
execute if score countdown tgttos matches -1 run execute if score gameprocess tgttos matches 3 run function mmt_tgttos:game_process/one_use/transroundend
execute if score gameprocess tgttos matches 1 run function mmt_tgttos:game_process/loop/round_before
execute if score gameprocess tgttos matches 2 run function mmt_tgttos:game_process/loop/round_start
execute if score gameprocess tgttos matches 3 run function mmt_tgttos:game_process/loop/round_end
execute as @a[tag=tgttos,x=8958,z=8936,dx=150,dz=130,y=20,dy=40] run function mmt_tgttos:death_check/death_check
function mmt_tgttos:game_process/loop/finish_check

#loop
schedule function mmt_tgttos:on_tick 1t replace