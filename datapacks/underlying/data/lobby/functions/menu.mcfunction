#最没用的一集
kill @e[type=item,name="熟鳕鱼"]
item replace entity @s hotbar.8 with cooked_cod{display:{Name:'{"text":"小鱼干","color":"gray","italic":false}'}} 1
execute as @s at @s run playsound minecraft:entity.cat.stray_ambient player @s ~ ~ ~ 100 1
tellraw @a [{"selector":"@s"},{"text": "竟然把小鱼干丢了!"}]
scoreboard players set @s menu 0