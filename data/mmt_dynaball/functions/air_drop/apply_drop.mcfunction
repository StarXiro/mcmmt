
setblock ~ ~ ~ minecraft:barrel[facing=up]{Items:[]}

execute store result storage mcmmt:dynaball macro_bag.random.rp int 1.0 run scoreboard players get #rand_item_len dnb_system
data modify storage mcmmt:dynaball macro_bag.random.lp set value 0
execute store result storage mcmmt:dynaball macro_bag.get.pos int 1.0 run function mmt_dynaball:tools/random with storage mcmmt:dynaball macro_bag.random
data modify storage mcmmt:dynaball macro_bag.get.path set value "weapons"
function mmt_dynaball:tools/get with storage mcmmt:dynaball macro_bag.get

data modify storage mcmmt:dynaball macro_bag.get.result merge value {Count:1, Slot:13}
data modify block ~ ~ ~ Items append from storage mcmmt:dynaball macro_bag.get.result

kill @s
