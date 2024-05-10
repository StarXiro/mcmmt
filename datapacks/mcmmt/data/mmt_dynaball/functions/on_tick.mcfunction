
# tnt arrow
execute as @e[type=minecraft:arrow, nbt={item:{tag:{Potion:"dynaball:tnt_arrow"}}, HasBeenShot:1b}] at @s run function mmt_dynaball:tnt_arrow
execute as @e[type=minecraft:tnt, tag=dynaball_tnt_fly] at @s if function mmt_dynaball:tnt_stop_check run function mmt_dynaball:stop_tnt
execute as @e[type=minecraft:tnt, tag=dynaball_tnt_froze] run data modify entity @s Motion set value [0.0d, 0.0d, 0.0d]

# loop
schedule function mmt_dynaball:on_tick 1t