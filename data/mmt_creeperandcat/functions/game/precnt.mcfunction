schedule function mmt_creeperandcat:game/precnt 1s
scoreboard players add second CACconfig 1
scoreboard players remove second1 CACconfig 1

execute if score second CACconfig matches 30 run schedule clear mmt_creeperandcat:game/precnt
execute if score second CACconfig matches 30 run scoreboard players set timemode CACconfig 2
execute if score second CACconfig matches 30 run scoreboard players set second1 CACconfig 0
execute if score second CACconfig matches 30 run scoreboard players set second CACconfig 0
