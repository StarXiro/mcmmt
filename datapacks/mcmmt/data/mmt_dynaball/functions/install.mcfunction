
data modify storage mcmmt:dynaball shot_tnt set value {motion: [0.0d, 0.0d, 0.0d]}
scoreboard objectives add dynaball_data dummy
scoreboard players set rand_mod dynaball_data 10
scoreboard players set rand_temp dynaball_data 0
execute if score logon core_setting matches 1 run tellraw @a {"text": "------------------------------", "color": "red"}
execute if score logon core_setting matches 1 run say Installed Game: Dynaball
execute if score logon core_setting matches 1 run say Written by: Darksky
execute if score logon core_setting matches 1 run say Version: a0.1.5
execute if score logon core_setting matches 1 run tellraw @a {"text": "------------------------------", "color": "red"}
