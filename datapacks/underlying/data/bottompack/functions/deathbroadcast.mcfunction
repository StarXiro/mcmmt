#伤害来源确定
scoreboard players set @a hurtby_temp 0
execute as @a run scoreboard players operation @s hurtby_temp += @s id
execute as @a run scoreboard players operation @s hurtby_temp -= @a[tag=dead] hurtby

#死亡消息
execute as @s[scores={hurtby=1..}] run function bottompack:deathmessage
tag @a[tag=dead] remove dead
scoreboard players reset @s hurtby
advancement revoke @s only bottompack:killby