
# get members
data modify storage mcmmt:dynaball macro_bag.get.path set from storage mcmmt:dynaball temp.teams[0]
function mmt_dynaball:prepare/get_members with storage mcmmt:dynaball macro_bag.get

# add team members to spectators
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball temp
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:prepare/add_to_spec"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each
