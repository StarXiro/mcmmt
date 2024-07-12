execute if score logon core_setting matches 1 run say Verb triggered: player_take_fall_damage
advancement revoke @s only mmt_core:event_player_take_fall_damage
execute unless data storage mcmmt:core installed run return fail
#--- Custom Insert

