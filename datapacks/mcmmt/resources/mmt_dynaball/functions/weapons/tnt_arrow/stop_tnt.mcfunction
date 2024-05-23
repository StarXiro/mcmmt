
data modify entity @s Motion set value [0.0d, 0.0d, 0.0d]
execute if score check_flg dynaball_data matches 1 run tp @s ~ ~ ~-0.8
execute if score check_flg dynaball_data matches 2 run tp @s ~ ~ ~0.8
execute if score check_flg dynaball_data matches 3 run tp @s ~0.8 ~ ~
execute if score check_flg dynaball_data matches 4 run tp @s ~-0.8 ~ ~
execute if score check_flg dynaball_data matches 5 run tp @s ~-0.5 ~ ~0.5
execute if score check_flg dynaball_data matches 6 run tp @s ~-0.5 ~ ~-0.5
execute if score check_flg dynaball_data matches 7 run tp @s ~0.5 ~ ~-0.5
execute if score check_flg dynaball_data matches 8 run tp @s ~0.5 ~ ~0.5
data modify entity @s NoGravity set value 1b
tag @s remove dynaball_tnt_fly
tag @s add dynaball_tnt_froze
