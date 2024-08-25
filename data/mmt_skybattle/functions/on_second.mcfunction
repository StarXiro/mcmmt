schedule function mmt_skybattle:on_second 1s
scoreboard players add second SKBconfig 1

execute if score second SKBconfig matches 10 run schedule clear mmt_skybattle:on_second
execute if score second SKBconfig matches 10 run function mmt_skybattle:game_process/prepare
execute if score second SKBconfig matches 10 run scoreboard players set second SKBconfig 0