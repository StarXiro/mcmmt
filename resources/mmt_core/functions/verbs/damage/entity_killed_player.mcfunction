execute if score logon core_setting matches 1 run say Verb triggered: entity_killed_player
advancement revoke @s only mmt_core:event_entity_killed_player
execute unless data storage mcmmt:core installed run return fail
#--- Custom Insert
