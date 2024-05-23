
scoreboard players set check_flg dynaball_data 0
execute if entity @s[nbt={OnGround:1b}] run return run scoreboard players set check_flg dynaball_data 9
execute at @s unless block ~ ~ ~-0.8 air run return run scoreboard players set check_flg dynaball_data 1
execute at @s unless block ~ ~ ~0.8 air run return run scoreboard players set check_flg dynaball_data 2
execute at @s unless block ~0.8 ~ ~ air run return run scoreboard players set check_flg dynaball_data 3
execute at @s unless block ~-0.8 ~ ~ air run return run scoreboard players set check_flg dynaball_data 4
execute at @s unless block ~-0.5 ~ ~0.5 air run return run scoreboard players set check_flg dynaball_data 5
execute at @s unless block ~-0.5 ~ ~-0.5 air run return run scoreboard players set check_flg dynaball_data 6
execute at @s unless block ~0.5 ~ ~-0.5 air run return run scoreboard players set check_flg dynaball_data 7
execute at @s unless block ~0.5 ~ ~0.5 air run return run scoreboard players set check_flg dynaball_data 8
