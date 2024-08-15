# uninstall mcmmt

execute unless data storage mcmmt:core installed run return fail

# stop utils.timer
schedule clear mmt_core:utils/timer/private/per_tick

# stop core
schedule clear mmt_core:per_sec
schedule clear mmt_core:per_tick
execute if score logon core_setting matches 1 run say Stop loop

# Uninstall Games
#--- Custom Inserts
function mmt_dynaball:stop
function mmt_dynaball:uninstall
function mmt_tgttos:stop
function mmt_tgttos:uninstall
function mmt_creeperandcat:stop
function mmt_creeperandcat:uninstall

# remove scoreboard
execute if score logon core_setting matches 1 run say Removing scoreboards
scoreboard objectives remove core_utils_rand
scoreboard objectives remove core_utils_scast
scoreboard objectives remove core_utils_sqrt
scoreboard objectives remove core_utils_sincos
scoreboard objectives remove core_utils_uuid_match
scoreboard objectives remove core_utils_search
scoreboard objectives remove core_utils_to_bin
scoreboard objectives remove core_utils_timer
scoreboard objectives remove core_utils_display_timer
scoreboard objectives remove core_utils_color_panel
scoreboard objectives remove core_utils_check_point
scoreboard objectives remove core_utils_check_point_id
scoreboard objectives remove core_utils_linear_map
scoreboard objectives remove core_utils_sbs_temp
scoreboard objectives remove core_utils_sbs_rank
scoreboard objectives remove core_utils_sbs_prank
scoreboard objectives remove core_utils_sbs_sort
scoreboard objectives remove core_utils_mg
scoreboard objectives remove core_datatemp
scoreboard objectives remove stas_last_death
scoreboard objectives remove stas_this_death
scoreboard objectives remove stas_last_walk
scoreboard objectives remove stas_this_walk
scoreboard objectives remove stas_last_elytra
scoreboard objectives remove stas_this_elytra

scoreboard objectives remove core_game_config
scoreboard objectives remove core_player_score
scoreboard objectives remove personalscore
# remove storage
execute if score logon core_setting matches 1 run say Removing storage
data remove storage mcmmt:core installed
data remove storage mcmmt:core_utils rand
data remove storage mcmmt:core_utils sight_cast
data remove storage mcmmt:core_utils sqrt
data remove storage mcmmt:core_utils sincos
data remove storage mcmmt:core_utils uuid_match
data remove storage mcmmt:core_utils to_bin
data remove storage mcmmt:core_utils search
data remove storage mcmmt:core_utils timer
data remove storage mcmmt:core_utils color_panel
data remove storage mcmmt:core_utils check_point
data remove storage mcmmt:core_utils linear_map
data remove storage mcmmt:core_utils pillar_check
data remove storage mcmmt:core_utils SBSconfig
data remove storage mcmmt:core_utils mg

function mmt_core:utils/for_each/__delete__
function mmt_core:utils/range/__delete__
function mmt_core:utils/make_match/__delete__
function mmt_core:utils/shuffle/__delete__
function mmt_core:utils/len/__delete__
function mmt_core:utils/team/__delete__

execute if score logon core_setting matches 1 run say Uninstallation finished TnT
scoreboard objectives remove core_setting