schedule function mmt_skybattle:border/2_summonborder 1t
scoreboard players add AS SKBconfig 1

execute as @e[tag=SKB_center] at @s run tp @s ~ ~ ~ facing ^176.32698 ^ ^1000
execute as @e[tag=SKB_center] at @s run summon minecraft:marker ^80 ^ ^ {Tags:[SKB_border]}

execute if score AS SKBconfig > downborder SKBconfig run schedule clear mmt_skybattle:border/2_summonborder
execute if score AS SKBconfig > downborder SKBconfig run function mmt_skybattle:border/3_borderfacing