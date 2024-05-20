# uninstall mcmmt

execute unless data storage mcmmt:core installed run return fail

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

# remove scoreboard
execute if score logon core_setting matches 1 run say Removing scoreboards
scoreboard objectives remove core_utils_rand
scoreboard objectives remove core_datatemp
scoreboard objectives remove stas_last_death
scoreboard objectives remove stas_this_death
scoreboard objectives remove stas_last_walk
scoreboard objectives remove stas_this_walk
scoreboard objectives remove stas_last_elytra
scoreboard objectives remove stas_this_elytra

# remove storage
execute if score logon core_setting matches 1 run say Removing storage
data remove storage mcmmt:core installed
data remove storage mcmmt:core_utils rand
data remove storage mcmmt:core_utils ray_trace

execute if score logon core_setting matches 1 run say Uninstallation finished TnT
scoreboard objectives remove core_setting