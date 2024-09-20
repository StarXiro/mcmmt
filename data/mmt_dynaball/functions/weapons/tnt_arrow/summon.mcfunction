
execute on origin run scoreboard players operation temp4 dnb_system = @s core_pid

execute store result score temp dnb_system run data get entity @s Motion[0] 1000.0
scoreboard players operation temp dnb_system *= tnt_arrow_scaler dnb_system
execute store result score temp2 dnb_system run data get entity @s Motion[1] 1000.0
scoreboard players operation temp2 dnb_system *= tnt_arrow_scaler dnb_system
execute store result score temp3 dnb_system run data get entity @s Motion[2] 1000.0
scoreboard players operation temp3 dnb_system *= tnt_arrow_scaler dnb_system

$summon minecraft:tnt ~ ~ ~ {Tags:["dnb_tnt_proj", "$(team)", "new_summon", "dnb_tnt_inactive"], fuse: 600s, Passengers:[{id:"minecraft:marker", Tags:["dnb_tnt_data"]}]}
execute as @e[distance=..1, type=minecraft:tnt, tag=new_summon] run function mmt_dynaball:weapons/tnt_arrow/apply_motion

kill @s