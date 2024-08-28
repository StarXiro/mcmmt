
data modify storage mcmmt:dynaball temp set value [0.0d, 0.0d, 0.0d]
data modify storage mcmmt:dynaball macro_bag.random.lp set value -40
data modify storage mcmmt:dynaball macro_bag.random.rp set value 40
execute store result storage mcmmt:dynaball temp[0] double 0.01 run function mmt_dynaball:tools/random with storage mcmmt:dynaball macro_bag.random
execute store result storage mcmmt:dynaball temp[2] double 0.01 run function mmt_dynaball:tools/random with storage mcmmt:dynaball macro_bag.random

execute summon minecraft:tnt run function mmt_dynaball:stuck/apply_tnt_motion
