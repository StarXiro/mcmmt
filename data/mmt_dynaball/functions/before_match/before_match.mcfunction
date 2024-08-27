
# set scoreboard display
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball start_up.team_list
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:before_match/reset_display"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

# tp all dnb_player & spectators to lobby
function mmt_dynaball:before_match/perform_tp with storage mcmmt:dynaball lobby

# inform all spectators
execute as @a[tag=dnb_spec] at @s run function mmt_dynaball:spectators/inform

# enter per_sec loop
function mmt_dynaball:before_match/loop_per_sec
