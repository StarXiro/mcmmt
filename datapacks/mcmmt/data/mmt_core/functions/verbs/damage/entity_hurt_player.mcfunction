execute if score logon core_setting matches 1 run say Verb triggered: entity_hurt_player
advancement revoke @s only mmt_core:event_entity_hurt_player
execute unless data storage mcmmt:core installed run return fail
#--- Custom Insert

