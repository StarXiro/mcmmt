$data modify storage mcmmt:dynaball temp set value $(object)
$data modify storage mcmmt:dynaball macro_bag.sd_set_pair.index set value $(index)
data modify storage mcmmt:dynaball macro_bag.sd_set_pair.team_a set from storage mcmmt:dynaball temp.team_a
data modify storage mcmmt:dynaball macro_bag.sd_set_pair.team_b set from storage mcmmt:dynaball temp.team_b
function mmt_dynaball:spectators/get_color_name with storage mcmmt:dynaball macro_bag.sd_set_pair
function mmt_dynaball:spectators/make_team_pair with storage mcmmt:dynaball macro_bag.sd_set_pair
scoreboard players remove temp2 dnb_system 1