execute if score logon core_setting matches 1 run say Verb triggered: place_any_block
advancement revoke @s only mmt_core:event_place_any_block
execute unless data storage mcmmt:core installed run return fail
#--- Custom Insert

