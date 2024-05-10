
data modify storage mcmmt:dynaball shot_tnt set value {motion: [0.0d, 0.0d, 0.0d]}
scoreboard objectives add dynaball_data dummy
execute if score logon core_setting matches 1 run say Installed Game: Dynaball
execute if score logon core_setting matches 1 run say Written by: Darksky & StarXiro
execute if score logon core_setting matches 1 run say Version: a0.1.0
