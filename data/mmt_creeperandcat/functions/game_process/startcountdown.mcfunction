schedule function mmt_creeperandcat:game_process/startcountdown 1t
scoreboard players add ticker CACconfig 1
execute if score ticker CACconfig matches 20 run scoreboard players add second CACconfig 1
execute if score ticker CACconfig matches 20 run scoreboard players remove second1 CACconfig 1
execute if score ticker CACconfig matches 20 run scoreboard players remove ticker CACconfig 20

execute if score second CACconfig matches 5 run schedule clear mmt_creeperandcat:game_process/startcountdown
execute if score second CACconfig matches 5 run scoreboard players set ticker CACconfig 0
execute if score second CACconfig matches 5 run effect clear @a[tag=cat] weakness
execute if score second CACconfig matches 5 run function mmt_creeperandcat:game_process/on_tick
execute if score second CACconfig matches 5 run scoreboard players set timemode CACconfig 4
execute if score second CACconfig matches 5 run scoreboard players set second1 CACconfig 60
execute if score second CACconfig matches 5 run give @a[tag=creeper] ender_pearl 2
execute if score second CACconfig matches 5 run scoreboard players set second CACconfig 0

