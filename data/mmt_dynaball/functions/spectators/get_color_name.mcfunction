$data modify storage mcmmt:dynaball temp set from storage mcmmt:core team_data.$(team_a)
data modify storage mcmmt:dynaball macro_bag.sd_set_pair.team_a set from storage mcmmt:dynaball temp.display
data modify storage mcmmt:dynaball macro_bag.sd_set_pair.ca set from storage mcmmt:dynaball temp.color

$data modify storage mcmmt:dynaball temp set from storage mcmmt:core team_data.$(team_b)
data modify storage mcmmt:dynaball macro_bag.sd_set_pair.team_b set from storage mcmmt:dynaball temp.display
data modify storage mcmmt:dynaball macro_bag.sd_set_pair.cb set from storage mcmmt:dynaball temp.color