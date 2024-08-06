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
data modify storage mcmmt:core teamlist set value ["red","orange","yellow","lime","green","blue","aqua","pink"]
execute if score logon core_setting matches 1 run say Core inited.

# setup utils
execute if score logon core_setting matches 1 run say Initializing utils...
execute if score logon core_setting matches 1 run say Inited storage for core.utils
data modify storage mcmmt:core_utils SBSconfig set value {score: 0, scoreboardname:"core_utils_sbs_temp",loop_max: 32,loop_cnt: 0}

function mmt_core:utils/rand/__setup__

function mmt_core:utils/sight_cast/__setup__

function mmt_core:utils/sqrt/__setup__

# use one setup
# function mmt_core:utils/sin/__setup__
function mmt_core:utils/cos/__setup__

function mmt_core:utils/uuid_match/__setup__

function mmt_core:utils/bfs/__setup__

function mmt_core:utils/timer/__setup__

function mmt_core:utils/to_bin/__setup__

function mmt_core:utils/color_panel/__setup__

function mmt_core:utils/check_point/__setup__

function mmt_core:utils/linear_map/__setup__

function mmt_core:utils/pillar_check/__setup__

function mmt_core:utils/sbs/__setup__

function mmt_core:utils/for_each/__setup__

function mmt_core:utils/range/__setup__

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