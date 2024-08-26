#functions
function mmt_tgttos:time/timer
function mmt_tgttos:scoreboard/main
function mmt_tgttos:item/main

#loop

execute if score countdown tgttos matches -1 if score gameprocess tgttos matches 1 run function mmt_tgttos:game_process/one_use/round/start_round

execute if score countdown tgttos matches -1 if score gameprocess tgttos matches 2 run function mmt_tgttos:game_process/one_use/round/end_round

execute if score countdown tgttos matches -1 if score gameprocess tgttos matches 3 run function mmt_tgttos:game_process/one_use/round/prepare_round

execute if score countdown tgttos matches -1 if score gameprocess tgttos matches 4 run function mmt_tgttos:game_process/one_use/game_end
execute if score countdown tgttos matches 859 if score gameprocess tgttos matches 4 run tellraw @a " "
execute if score countdown tgttos matches 859 if score gameprocess tgttos matches 4 run tellraw @a {"text":"本游戏各队积分情况:","bold":true}
execute if score countdown tgttos matches 799 if score gameprocess tgttos matches 4 run function mmt_tgttos:game_process/broadcast/teamscore
execute if score countdown tgttos matches 719 if score gameprocess tgttos matches 4 run tellraw @a " "
execute if score countdown tgttos matches 719 if score gameprocess tgttos matches 4 run tellraw @a {"text":"本场游戏最佳玩家:","bold":true}
execute if score countdown tgttos matches 659 if score gameprocess tgttos matches 4 run function mmt_tgttos:game_process/broadcast/playerscore
execute if score countdown tgttos matches 659 if score gameprocess tgttos matches 4 run execute as @a[tag=tgttos] run tellraw @s {"translate":"%s. %s: %s","with":[{"score":{"name":"@s","objective":"core_utils_sbs_prank"}},{"selector":"@s"},{"score":{"name":"@s","objective":"tgttos_player_score"}}]}

#one_use

execute if score gameprocess tgttos matches 1 run function mmt_tgttos:game_process/loop/round_prepare
execute if score gameprocess tgttos matches 2 run function mmt_tgttos:game_process/loop/round_start
execute if score gameprocess tgttos matches 3 run function mmt_tgttos:game_process/loop/round_end
execute as @a[tag=tgttos,x=8958,z=8936,dx=150,dz=130,y=20,dy=40] run function mmt_tgttos:death_check/death_check

function mmt_tgttos:game_process/loop/finish_check

#loop
schedule function mmt_tgttos:on_tick 1t replace