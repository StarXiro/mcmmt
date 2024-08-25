execute unless function mmt_dynaball:tnt_proj/validate run kill @s
tag @s remove dnb_tnt_inactive
tag @s add dnb_tnt_active
data modify entity @s fuse set value 60s