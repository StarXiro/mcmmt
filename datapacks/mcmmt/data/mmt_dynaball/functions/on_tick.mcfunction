
# tnt arrow
execute as @e[type=minecraft:arrow, nbt={item:{tag:{Potion:"dynaball:tnt_arrow"}}, HasBeenShot:1b}] at @s run function mmt_dynaball:weapons/tnt_arrow/tnt_arrow
execute as @e[type=minecraft:tnt, tag=dynaball_tnt_fly] at @s if function mmt_dynaball:weapons/tnt_arrow/tnt_stop_check run function mmt_dynaball:weapons/tnt_arrow/stop_tnt
execute as @e[type=minecraft:tnt, tag=dynaball_tnt_froze] at @s run function mmt_dynaball:weapons/tnt_arrow/maintain_froze

# fix blocks
execute as @e[type=minecraft:item, nbt=!{Item:{tag:{CustomModelData:11}}}] at @s run function mmt_dynaball:blocks/drop_replace

# loop
schedule function mmt_dynaball:on_tick 1t