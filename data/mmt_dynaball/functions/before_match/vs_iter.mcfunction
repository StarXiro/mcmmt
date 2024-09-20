$data modify storage mcmmt:dynaball temp set value $(object)
data modify storage mcmmt:dynaball macro_bag.show_vs.team_a set from storage mcmmt:dynaball temp.team_a
data modify storage mcmmt:dynaball macro_bag.show_vs.team_b set from storage mcmmt:dynaball temp.team_b
data modify storage mcmmt:dynaball macro_bag.show_vs.round set from storage mcmmt:dynaball macro_bag.make_board.r
function mmt_dynaball:before_match/color_get with storage mcmmt:dynaball macro_bag.show_vs

# team_a
data modify storage mcmmt:dynaball macro_bag.show_vs.id set from storage mcmmt:dynaball temp.team_a
function mmt_dynaball:before_match/perform_show_vs with storage mcmmt:dynaball macro_bag.show_vs

# swap
data modify storage mcmmt:dynaball macro_bag.show_vs.id set from storage mcmmt:dynaball macro_bag.show_vs.team_b
data modify storage mcmmt:dynaball macro_bag.show_vs.team_b set from storage mcmmt:dynaball macro_bag.show_vs.team_a
data modify storage mcmmt:dynaball macro_bag.show_vs.team_a set from storage mcmmt:dynaball macro_bag.show_vs.id
data modify storage mcmmt:dynaball macro_bag.show_vs.id set from storage mcmmt:dynaball macro_bag.show_vs.cb
data modify storage mcmmt:dynaball macro_bag.show_vs.cb set from storage mcmmt:dynaball macro_bag.show_vs.ca
data modify storage mcmmt:dynaball macro_bag.show_vs.ca set from storage mcmmt:dynaball macro_bag.show_vs.id

# team_b
data modify storage mcmmt:dynaball macro_bag.show_vs.id set from storage mcmmt:dynaball temp.team_b
function mmt_dynaball:before_match/perform_show_vs with storage mcmmt:dynaball macro_bag.show_vs
