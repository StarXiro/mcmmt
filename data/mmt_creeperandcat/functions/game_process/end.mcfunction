schedule function mmt_creeperandcat:game_process/end 1t

scoreboard players add ticker CACconfig 1
execute if score ticker CACconfig matches 20 run scoreboard players add second CACconfig 1
execute if score ticker CACconfig matches 20 run scoreboard players remove ticker CACconfig 20

execute if score second CACconfig matches 10 run schedule clear mmt_creeperandcat:game_process/end
execute if score second CACconfig matches 10 run say 114514
execute if score second CACconfig matches 10 run function mmt_creeperandcat:game_process/prepare

clear @a