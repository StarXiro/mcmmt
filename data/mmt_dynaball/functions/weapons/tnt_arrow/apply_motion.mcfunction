
execute on passengers store result entity @s data.origin int 1.0 run scoreboard players get temp4 dnb_system

data modify storage mcmmt:dynaball temp set value [0.0d, 0.0d, 0.0d]

execute store result storage mcmmt:dynaball temp[0] double 0.00001 run scoreboard players get temp dnb_system
execute store result storage mcmmt:dynaball temp[1] double 0.00001 run scoreboard players get temp2 dnb_system
execute store result storage mcmmt:dynaball temp[2] double 0.00001 run scoreboard players get temp3 dnb_system

data modify entity @s Motion set from storage mcmmt:dynaball temp

tag @s remove new_summon
