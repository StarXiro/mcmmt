
# Managed by advancements:
# entity_hurt_player
# entity_killed_player
# player_hurt_entity
# player_hurt_player
# player_take_fall_damage
# player_take_void_damage
# place_any_block
# place_any_wool


# Managed by scoreboards
function mmt_core:statistics/player_death
function mmt_core:statistics/player_walk
function mmt_core:statistics/player_aviate

function mmt_core:utils/private_timer/snowball_check

execute as @a[scores={personalscore=1..}] run function mmt_core:trigger/personalscore
# loop it
schedule function mmt_core:per_tick 1t replace