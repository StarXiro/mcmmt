
# index
# object

$data modify storage mcmmt:dynaball temp set from storage mcmmt:core team_data.$(object).members

data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball temp
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:prepare/perform_tag"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each
