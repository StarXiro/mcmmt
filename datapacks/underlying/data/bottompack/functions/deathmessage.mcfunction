execute store result score randscore rand run random value 1..4
execute if score randscore rand matches 1 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"被"},{"selector":"@a[scores={hurtby_temp=0},tag=player]"},{"text":"打的喵喵叫"}]
execute if score randscore rand matches 2 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"被"},{"selector":"@a[scores={hurtby_temp=0},tag=player]"},{"text":"打飞了，好似喵!"}]
execute if score randscore rand matches 3 run tellraw @a [{"text":""},{"selector":"@a[scores={hurtby_temp=0},tag=player]"},{"text":"把"},{"selector":"@s"},{"text":"的小鱼干吃光了"}]
execute if score randscore rand matches 4 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"辛辛苦苦藏的猫薄荷被"},{"selector":"@a[scores={hurtby_temp=0},tag=player]"},{"text":"抢走了!"}]