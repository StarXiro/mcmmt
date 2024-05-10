
scoreboard players set check_flg dynaball_data 0
execute if entity @s[nbt={OnGround:1b}] run return 1
execute at @s unless block ~ ~ ~-0.8 air run scoreboard players set check_flg dynaball_data 1
execute at @s unless block ~ ~ ~0.8 air run scoreboard players set check_flg dynaball_data 1
execute at @s unless block ~0.8 ~ ~ air run scoreboard players set check_flg dynaball_data 1
execute at @s unless block ~-0.8 ~ ~ air run scoreboard players set check_flg dynaball_data 1
execute if score check_flg dynaball_data matches 1 run return 1