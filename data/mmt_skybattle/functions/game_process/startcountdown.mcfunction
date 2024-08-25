schedule function mmt:skybattle/game_process/startcountdown 1s
scoreboard players add second SKBconfig 1

execute if score second SKBconfig matches 15 run schedule clear mmt_skybattle:game_process/startcountdown
execute if score second SKBconfig matches 15 run function mmt_skybattle:game_process/start
execute if score second SKBconfig matches 15 run scoreboard players set timemode SKBconfig 2

execute if score second SKBconfig matches 15 run scoreboard players set second SKBconfig 0