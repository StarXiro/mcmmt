# install mcmmt

# setup internal database

# setup scoreboard for core
# core
scoreboard objectives add core_datatemp dummy
scoreboard objectives add core_setting dummy
scoreboard players set logon core_setting 1
scoreboard players set valid_check core_datatemp 0
data modify storage mcmmt:core installed set value 1b
execute if score logon core_setting matches 1 run say Inited core

# setup storage for core.utils
data modify storage mcmmt:core_utils rand set value {result: 0}
data modify storage mcmmt:core_utils ray_trace set value {end_block: {}, if_touched: 0b, iter_cnt: 0}
execute if score logon core_setting matches 1 run say Inited storage for core.utils

# utils.rand
scoreboard objectives add core_utils_rand dummy
scoreboard players set r_mod core_utils_rand 1000000007
scoreboard players set r_mul core_utils_rand 64
scoreboard players set r_add core_utils_rand 13
scoreboard players set lower_bd core_utils_rand 0
scoreboard players set upper_bd core_utils_rand 99999999
scoreboard players set range core_utils_rand 99999999
scoreboard players set rand core_utils_rand 1
scoreboard players set result core_utils_rand 1
execute if score logon core_setting matches 1 run say Inited scoreboards for core.utils.rand

# statistics
scoreboard objectives add stas_last_death dummy
scoreboard objectives add stas_this_death deathCount
execute if score logon core_setting matches 1 run say Inited scoreboards for statistics

# setup mini games
execute if score logon core_setting matches 1 run say Installing mini games...
#--- Custom Inserts
function mmt_dynaball:install

# run loop
execute if score logon core_setting matches 1 run say Start loop
function mmt_core:per_tick
function mmt_core:per_sec