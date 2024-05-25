

data modify storage mcmmt:dynaball shot_tnt set value {motion: [0.0d, 0.0d, 0.0d]}
data modify storage mcmmt:dynaball random_motion set value [0.0d, 0.0d, 0.0d]
scoreboard objectives add dynaball_data dummy
scoreboard objectives add dnb_self_explose dummy
scoreboard players set rand_mod dynaball_data 10
scoreboard players set rand_positive_mod dynaball_data 2
scoreboard players set rand_positive dynaball_data 1
scoreboard players set rand_temp dynaball_data 0
scoreboard players set rand_motion_mod dynaball_data 350

execute if score logon core_setting matches 1 run function mmt_dynaball:info
