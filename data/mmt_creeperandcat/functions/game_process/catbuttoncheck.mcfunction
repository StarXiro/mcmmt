schedule function mmt_creeperandcat:game_process/catbuttoncheck 1t replace
execute positioned -4998 121 -4967 if block ~ ~ ~ stone_button[powered=true] run execute as @p at @s run function mmt_creeperandcat:game_process/catchoose
scoreboard players add ticker CACconfig 1
execute if score ticker CACconfig matches 20 run scoreboard players add second CACconfig 1
execute if score ticker CACconfig matches 20 run scoreboard players remove ticker CACconfig 20
execute if score ticker CACconfig matches 20 run scoreboard players add second1 CACconfig 1

execute if score second CACconfig matches 20 run schedule clear mmt_creeperandcat:game_process/catbuttoncheck
execute if score second CACconfig matches 20 run function mmt_creeperandcat:game_process/start
