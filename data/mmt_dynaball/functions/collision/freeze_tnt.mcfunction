tag @s add dnb_tnt_freeze
tag @s remove dnb_tnt_inactive
tag @s add dnb_tnt_active
data modify entity @s Motion set value [0.0d, 0.0d, 0.0d]
data modify entity @s NoGravity set value 1b
data modify entity @s fuse set value 60s
$execute as @s at @s run tp @s $(pos)