
execute as @s if score @s dnb_self_explose matches 0 run return run function mmt_dynaball:stuck/self_explose
execute as @s if score @s dnb_self_explose matches 1.. run scoreboard players remove @s dnb_self_explose 1
