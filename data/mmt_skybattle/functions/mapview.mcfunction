schedule function mmt_skybattle:mapview 1t

execute as @e[tag=SKB_mapview] at @s run tp @a[tag=SKB] ~ ~ ~ facing 0 112 -5000
execute if score tick SKBconfig <= show1 SKBconfig run execute as @e[tag=SKB_mapview] at @s run tp @s ^0 ^0 ^0.1 facing 0 112 -5000
execute if score tick SKBconfig > show1 SKBconfig run execute as @e[tag=SKB_mapview] at @s run tp @s ~ ~0.1 ~ facing ~ ~-1 ~

scoreboard players add tick SKBconfig 1

execute if score tick SKBconfig matches 100 run tp @a[tag=player,gamemode=spectator] 0 150 -5000 facing 0 100 -5000

execute if score tick SKBconfig matches 200 run gamemode survival @a[tag=player,gamemode=spectator]
execute if score tick SKBconfig matches 200 run schedule clear mmt_skybattle:mapview
execute if score tick SKBconfig matches 200 run kill @e[tag=SKB_mapview,type=marker]
execute if score tick SKBconfig matches 200 run scoreboard players set tick SKBconfig 0
