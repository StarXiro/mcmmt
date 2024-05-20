data modify entity @s Motion set value [0.0d, 0.0d, 0.0d]
execute if block ~ ~ ~ air run data modify entity @s NoGravity set value 0b
execute if block ~ ~ ~ air run tag @s remove dynaball_tnt_froze