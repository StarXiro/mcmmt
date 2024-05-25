
summon tnt ~ ~ ~
function mmt_dynaball:stuck/gen_random_motion
summon tnt ~ ~ ~ {fuse:50, Tags:["dnb_sub_tnt_1"]}
execute as @e[tag=dnb_sub_tnt_1, distance=..0.5] run data modify entity @s Motion set from storage mcmmt:dynaball random_motion
function mmt_dynaball:stuck/gen_random_motion
summon tnt ~ ~ ~ {fuse:50, Tags:["dnb_sub_tnt_2"]}
execute as @e[tag=dnb_sub_tnt_2, distance=..0.5] run data modify entity @s Motion set from storage mcmmt:dynaball random_motion

execute if entity @s[tag=team_a] run team join team_a
execute if entity @s[tag=team_b] run team join team_b

item replace entity @s armor.head with air

scoreboard players set @s dnb_self_explose -1
tag @s remove dnb_self_explose
