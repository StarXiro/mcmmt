schedule function mmt_skybattle:game_process/ingame 1t
scoreboard players add tick SKBconfig 1

#timer
execute if score tick SKBconfig matches 20 run scoreboard players remove second SKBconfig 1
execute if score tick SKBconfig matches 20 run scoreboard players remove second1 SKBconfig 1
execute if score tick SKBconfig matches 20 run scoreboard players set tick SKBconfig 0
execute if score second SKBconfig matches -1 run scoreboard players remove minute SKBconfig 1
execute if score second SKBconfig matches -1 run scoreboard players add second SKBconfig 60

#border movement
execute if score second1 SKBconfig matches 240 run scoreboard players set borderx SKBconfig 60
execute if score second1 SKBconfig matches 180 run scoreboard players set borderx SKBconfig 40
execute if score second1 SKBconfig matches 120 run scoreboard players set borderx SKBconfig 22
execute if score second1 SKBconfig matches 60 run scoreboard players set borderx SKBconfig 8

#void
execute as @a[tag=player] run execute if score @s SKBconfig <= lowborder SKBconfig run kill @s

#round end
execute if score second1 SKBconfig matches 0 run schedule clear mmt_skybattle:game_process/ingame
execute if score second1 SKBconfig matches 0 run schedule clear mmt_skybattle:deathmessage/trigger
execute if score second1 SKBconfig matches 0 run schedule clear mmt_skybattle:game_process/playerpos
execute if score second1 SKBconfig matches 0 run scoreboard players set second SKBconfig 10
execute if score second1 SKBconfig matches 0 run scoreboard players set timemode SKBconfig 3
execute if score second1 SKBconfig matches 0 run function mmt_skybattle:game_process/round_end
