schedule function mmt_skybattle:2_mapview 1t

execute as @e[tag=SKB_mapview] at @s run tp @a[tag=SKB] @e[tag=SKB_mapview,limit=1]
execute if score tick SKBconfig <= show1 SKBconfig run execute as @e[tag=SKB_mapview] at @s run tp @s ^0 ^0 ^0.1 facing 0 112 -5000
execute if score tick SKBconfig > show1 SKBconfig run execute as @e[tag=SKB_mapview] at @s run tp @s ~ ~0.1 ~ facing ~ ~-1 ~

scoreboard players add tick SKBconfig 1

execute if score tick SKBconfig matches 100 run tp @e[tag=SKB_mapview] 0 150 -5000 facing 0 100 -5000

execute if score tick SKBconfig matches 180 run schedule clear mmt_skybattle:2_mapview
execute if score tick SKBconfig matches 180 run kill @e[tag=SKB_mapview]
execute if score tick SKBconfig matches 180 run scoreboard players set tick SKBconfig 0
