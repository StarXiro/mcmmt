data modify storage mcmmt:dynaball macro_bag.len.list set from storage mcmmt:dynaball msg_list.source_death
execute store result score temp4 dnb_system run function mmt_core:utils/len/do with storage mcmmt:dynaball macro_bag.len
scoreboard players remove temp4 dnb_system 1

execute store result storage mcmmt:dynaball macro_bag.random.rp int 1.0 run scoreboard players get temp4 dnb_system
data modify storage mcmmt:dynaball macro_bag.random.lp set value 0
execute store result storage mcmmt:dynaball macro_bag.get.pos int 1.0 run function mmt_dynaball:tools/random with storage mcmmt:dynaball macro_bag.random

data modify storage mcmmt:dynaball macro_bag.get.path set value "msg_list.source_death"
function mmt_dynaball:tools/get with storage mcmmt:dynaball macro_bag.get

data modify storage mcmmt:dynaball macro_bag.message.template set from storage mcmmt:dynaball macro_bag.get.result