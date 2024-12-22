schedule function mmt_skybattle:game_process/5_round_end 1s
scoreboard players remove second SKBconfig 1

execute if score second SKBconfig matches 0 run gamemode creative @a
execute if score second SKBconfig matches 0 run schedule clear mmt_skybattle:game_process/5_round_end
execute if score second SKBconfig matches 0 run function mmt_skybattle:stop