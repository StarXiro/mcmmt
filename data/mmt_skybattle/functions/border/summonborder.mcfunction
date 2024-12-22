schedule function mmt_skybattle:border/summonborder 1t
scoreboard players add AS SKBconfig 1

execute if score AS SKBconfig > downborder SKBconfig run schedule clear mmt_skybattle:border/summonborder
execute if score AS SKBconfig > downborder SKBconfig run return fail

execute as @e[tag=SKB_center] at @s run tp @s ~ ~ ~ facing ^176.32698 ^ ^1000
execute as @e[tag=SKB_center] at @s run summon minecraft:armor_stand ^80 ^ ^ {Tags:[SKB_border],NoAI:1}

execute if score AS SKBconfig > downborder SKBconfig run schedule clear mmt_skybattle:border/summonborder