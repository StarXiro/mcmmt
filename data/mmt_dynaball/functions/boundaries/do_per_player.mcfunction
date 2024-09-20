$execute store result score temp4 dnb_system run data get entity @s $(source) 1.0
$execute if score temp4 dnb_system $(cmp) temp3 dnb_system run function mmt_dynaball:boundaries/out_of_bound