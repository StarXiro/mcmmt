
# set scoreboard display
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball board_saves
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:before_match/reset_display"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

# tp all dnb_player to lobby
function mmt_dynaball:before_match/perform_tp with storage mcmmt:dynaball lobby

# enter per_sec loop
function mmt_dynaball:before_match/loop_per_sec
