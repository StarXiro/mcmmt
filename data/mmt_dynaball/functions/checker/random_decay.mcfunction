
execute store result score temp3 dnb_system run function mmt_dynaball:tools/random with storage mcmmt:dynaball macro_bag.random
execute if score temp3 dnb_system < checker_decay dnb_system run kill @s
