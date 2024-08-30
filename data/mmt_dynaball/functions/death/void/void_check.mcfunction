execute store result score temp3 dnb_system run data get entity @s Pos[1] 1.0
execute if score temp3 dnb_system < eliminate dnb_system run return 1
return fail