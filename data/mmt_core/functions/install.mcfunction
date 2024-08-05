# install mcmmt

execute if data storage mcmmt:core installed run return fail
# setup internal database

# setup scoreboard for core
# core
function mmt_core:version

scoreboard objectives add core_datatemp dummy
scoreboard objectives add core_setting dummy
scoreboard objectives add core_pid dummy

scoreboard players set logon core_setting 1
scoreboard players set online_player core_setting 0
scoreboard players set max_pid core_setting 0

scoreboard players set pid_iter core_datatemp 0
scoreboard players set valid_check core_datatemp 0

# register constants
function mmt_core:register_constants

data modify storage mcmmt:core installed set value 1b
execute if score logon core_setting matches 1 run say Inited core

# setup storage for core.utils
data modify storage mcmmt:core_utils sincos set value {result: 0.0f, value: 0.0d}
data modify storage mcmmt:core_utils sqrt set value {result: 0.0d, scaler: 1.0f, value: 0.0d}
data modify storage mcmmt:core_utils rand set value {result: 0}
data modify storage mcmmt:core_utils sight_cast set value {end_pos: [0.0d, 0.0d, 0.0d], success: 0b, iter_cnt: 0, rotation:[0.0f, 0.0f]}
data modify storage mcmmt:core_utils uuid_match set value {base: [I;0,0,0,0], UUID: [I;0,0,0,0]}
data modify storage mcmmt:core_utils check_point set value {points: [{name: "example", pos: [0, 0, 0]}], call_bag: {callback: "mmt_core:utils/private_check_point/default_callback", target: {}}, max_index: 0, map_args: {from: [0, 0], to: [-1200, 1200]}, init_args: {x: 0, y: 0, z: 0, id: 0, r: 0.0d, g: 0.0d, b: 0.0d}, target: {name: "none", pos:[0, 0, 0]}, back: {call_id: 0}, pos_temp:{x: 0, y: 0, z: 0, r1: 0.0f, r2: 0.0f}, vec3_temp: [0, 0, 0]}
data modify storage mcmmt:core_utils SBSconfig set value {score: 0, scoreboardname:"core_utils_sbs_temp",loop_max: 32,loop_cnt: 0}
data modify storage mcmmt:core_utils for_each set value {loop_cnt: 0, object: {}}

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
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.rand

# utils.sight_cast
scoreboard objectives add core_utils_scast dummy
scoreboard players set scast_limit core_utils_scast 100
scoreboard players set scast_last_iter core_utils_scast 0
scoreboard players set scast_present core_utils_scast 0
scoreboard players set scast_success core_utils_scast 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.sight_cast

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
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.sqrt

# utils.sin & utils.cos
scoreboard objectives add core_utils_sincos dummy
scoreboard players set input core_utils_sincos 0
scoreboard players set result core_utils_sincos 0
scoreboard players set scaler core_utils_sincos 1000000
scoreboard players set neg_cons core_utils_sincos -1
scoreboard players set processed core_utils_sincos 0
scoreboard players set rev_flg core_utils_sincos 0
scoreboard players set ant_flg core_utils_sincos 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.sincos

# utils.uuid_match
scoreboard objectives add core_utils_uuid_match dummy
scoreboard players set uuid1 core_utils_uuid_match 0
scoreboard players set uuid2 core_utils_uuid_match 0
scoreboard players set uuid3 core_utils_uuid_match 0
scoreboard players set uuid4 core_utils_uuid_match 0
scoreboard players set to_match core_utils_uuid_match 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.uuid_match

function mmt_core:utils/bfs/__setup__

function mmt_core:utils/timer/__setup__

function mmt_core:utils/to_bin/__setup__

function mmt_core:utils/color_panel/__setup__

# utils.check_point
scoreboard objectives add core_utils_check_point dummy
scoreboard objectives add core_utils_check_point_id dummy
scoreboard players set show_marker core_utils_check_point 0
scoreboard players set force_ascend core_utils_check_point 0
scoreboard players set max_index core_utils_check_point 0
scoreboard players set out_of_bound core_utils_check_point 0
scoreboard players set index core_utils_check_point 0
scoreboard players set temp core_utils_check_point 0
scoreboard players set temp2 core_utils_check_point 0
scoreboard players set temp3 core_utils_check_point 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.check_point

function mmt_core:utils/linear_map/__setup__

function mmt_core:utils/pillar_check/__setup__

# utils scoreboard bubble sort
scoreboard objectives add core_utils_sbs_temp dummy
scoreboard objectives add core_utils_sbs_rank dummy
scoreboard objectives add core_utils_sbs_prank dummy
scoreboard objectives add core_utils_sbs_sort dummy
scoreboard players set SBS_temp core_utils_sbs_sort 0
execute if score logon core_setting matches 1 run say Inited scoreboards for core.utils.sbs

# utils.for_each
scoreboard objectives add core_utils_for_each dummy
scoreboard players set iter core_utils_for_each 0
execute if score logon core_setting matches 1 run say Inited scoreboards for core.utils.for_each

# setup global variables
scoreboard objectives add core_game_config dummy
scoreboard objectives add core_player_score dummy
execute if score logon core_setting matches 1 run say Inited scoreboards for global variables

# utils personalscore initialize
scoreboard objectives add personalscore trigger
scoreboard players enable @a personalscore
execute if score logon core_setting matches 1 run say Inited scoreboards for triggers

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
function mmt_lobby:install

# run loop
execute if score logon core_setting matches 1 run say Start loop
scoreboard players set logon core_setting 0
function mmt_core:per_tick
function mmt_core:per_sec