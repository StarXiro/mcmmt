#death message
execute store result score randscore rand run random value 1..10
execute store result score randscore2 rand run random value 1..10
execute if score randscore rand matches 1 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"似乎对猫毛过敏","color":"gray"}]
execute if score randscore rand matches 2 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"不认为自己可以成功到达终点","color":"gray"}]
execute if score randscore rand matches 3 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"脚下一滑","color":"gray"}]
execute if score randscore rand matches 4 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"接受了深渊的召唤","color":"gray"}]
execute if score randscore rand matches 5 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"摔得七荤八素","color":"gray"}]
execute if score randscore rand matches 6 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"抛弃了ta心爱的方块","color":"gray"}]
execute if score randscore rand matches 7 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"的键盘似乎出了一些问题","color":"gray"}]
execute if score randscore rand matches 8 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"操作不当","color":"gray"}]
execute if score randscore rand matches 9 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"被苦力怕附身了","color":"gray"}]
execute if score randscore rand matches 10 run execute unless score randscore2 rand matches 10 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"使用了信仰之跃，结果不太令人满意","color":"gray"}]
execute if score randscore rand matches 10 run execute if score randscore2 rand matches 10 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"触发了彩蛋,很可惜没有分数奖励","color":"gold"}]

#go back
execute as @a[tag=tgttos,x=8958,z=8936,dx=150,dz=130,y=20,dy=40] run spreadplayers 9000 9000 0 4 under 101 false @s
execute as @a[tag=tgttos,x=8958,z=8936,dx=150,dz=130,y=20,dy=40] run tp @s 9000 101 9000