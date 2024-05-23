execute if score logon core_setting matches 1 run say Verb triggered: player_hurt_entity
advancement revoke @s only mmt_core:event_player_hurt_entity
execute unless data storage mcmmt:core installed run return fail
#--- Custom Insert

