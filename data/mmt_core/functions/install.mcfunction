# install mcmmt

execute if data storage mcmmt:core installed run return fail
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
data modify storage mcmmt:core_utils sincos set value {result: 0.0f, value: 0.0d}
data modify storage mcmmt:core_utils sqrt set value {result: 0.0d, scaler: 1.0f, value: 0.0d}
data modify storage mcmmt:core_utils rand set value {result: 0}
data modify storage mcmmt:core_utils sight_cast set value {end_pos: [0.0d, 0.0d, 0.0d], success: 0b, iter_cnt: 0, rotation:[0.0f, 0.0f]}
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


# utils.sight_cast
scoreboard objectives add core_utils_scast dummy
scoreboard players set scast_limit core_utils_scast 100
scoreboard players set scast_last_iter core_utils_scast 0
scoreboard players set scast_present core_utils_scast 0
scoreboard players set scast_success core_utils_scast 0
execute if score logon core_setting matches 1 run say Inited scoreboards for core.utils.sight_cast

# utils.sqrt
scoreboard objectives add core_utils_sqrt dummy
scoreboard players set scaler core_utils_sqrt 1
scoreboard players set input core_utils_sqrt 0
scoreboard players set result core_utils_sqrt 0
scoreboard players set x core_utils_sqrt 0
scoreboard players set temp1 core_utils_sqrt 0
scoreboard players set temp2 core_utils_sqrt 0
scoreboard players set last_x core_utils_sqrt 0
scoreboard players set constant core_utils_sqrt 2
execute if score logon core_setting matches 1 run say Inited scoreboards for core.utils.sqrt

# utils.sin & utils.cos
scoreboard objectives add core_utils_sincos dummy
scoreboard players set input core_utils_sincos 0
scoreboard players set result core_utils_sincos 0
scoreboard players set scaler core_utils_sincos 1000000
scoreboard players set neg_cons core_utils_sincos -1
scoreboard players set processed core_utils_sincos 0
scoreboard players set rev_flg core_utils_sincos 0
scoreboard players set ant_flg core_utils_sincos 0
execute if score logon core_setting matches 1 run say Inited scoreboards for core.utils.sincos


# statistics
scoreboard objectives add stas_last_death dummy
scoreboard objectives add stas_this_death deathCount
scoreboard objectives add stas_last_walk dummy
scoreboard objectives add stas_this_walk minecraft.custom:walk_one_cm
scoreboard objectives add stas_last_elytra dummy
scoreboard objectives add stas_this_elytra minecraft.custom:minecraft.aviate_one_cm
execute if score logon core_setting matches 1 run say Inited scoreboards for statistics

# setup mini games
execute if score logon core_setting matches 1 run say Installing mini games...
#--- Custom Inserts
function mmt_dynaball:install
function mmt_tgttos:install
function mmt_creeperandcat:install

# run loop
execute if score logon core_setting matches 1 run say Start loop
function mmt_core:per_tick
function mmt_core:per_sec