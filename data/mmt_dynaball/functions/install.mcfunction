

data modify storage mcmmt:dynaball shot_tnt set value {motion: [0.0d, 0.0d, 0.0d]}
data modify storage mcmmt:dynaball random_motion set value [0.0d, 0.0d, 0.0d]
data modify storage mcmmt:dynaball bomb_egg set value {motion: [0.0d, 0.0d, 0.0d]}
scoreboard objectives add dynaball_data dummy
scoreboard objectives add dnb_self_explose dummy
scoreboard objectives add dnb_air_strike dummy
scoreboard objectives add dnb_motion_x dummy
scoreboard objectives add dnb_motion_z dummy
scoreboard players set negative dynaball_data -1

scoreboard players set rand_mod dynaball_data 10
scoreboard players set rand_positive_mod dynaball_data 2
scoreboard players set rand_positive dynaball_data 1
scoreboard players set rand_temp dynaball_data 0
scoreboard players set rand_motion_mod dynaball_data 350
scoreboard players set air_strike_wait dynaball_data 1
scoreboard players set sand_arrow_bfs_lim dynaball_data 25
scoreboard players set sand_arrow_y_up_lim dynaball_data 1
scoreboard players set sand_arrow_y_down_lim dynaball_data -6
scoreboard players set sand_arrow_unit_lim dynaball_data 6
scoreboard players set sand_arrow_temp dynaball_data 0
scoreboard players set sand_arrow_ptr_x dynaball_data 0
scoreboard players set sand_arrow_ptr_y dynaball_data 0
scoreboard players set sand_arrow_ptr_z dynaball_data 0

execute if score logon core_setting matches 1 run function mmt_dynaball:info


# CutomModelData
# tnt_arrow 11
# tnt_chick teamB 12 teamA 13