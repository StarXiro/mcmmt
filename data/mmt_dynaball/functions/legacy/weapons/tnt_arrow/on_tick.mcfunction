
execute as @e[type=minecraft:arrow, nbt={item:{tag:{Potion:"dynaball:tnt_arrow_a"}}, HasBeenShot:1b}] at @s run function mmt_dynaball:weapons/tnt_arrow/tnt_arrow_a
execute as @e[type=minecraft:arrow, nbt={item:{tag:{Potion:"dynaball:tnt_arrow_b"}}, HasBeenShot:1b}] at @s run function mmt_dynaball:weapons/tnt_arrow/tnt_arrow_b

execute as @e[type=minecraft:tnt, tag=dynaball_tnt_fly, tag=tnt_team_a] at @s if entity @p[distance=..0.8, tag=team_b, tag=player_dynaball, tag=!dnb_self_explose] run function mmt_dynaball:weapons/tnt_arrow/stuck_tnt
execute as @e[type=minecraft:tnt, tag=dynaball_tnt_fly, tag=tnt_team_b] at @s if entity @p[distance=..0.8, tag=team_a, tag=player_dynaball, tag=!dnb_self_explose] run function mmt_dynaball:weapons/tnt_arrow/stuck_tnt

execute as @e[type=minecraft:tnt, tag=dynaball_tnt_fly] at @s if function mmt_dynaball:weapons/tnt_arrow/tnt_stop_check run function mmt_dynaball:weapons/tnt_arrow/stop_tnt
execute as @e[type=minecraft:tnt, tag=dynaball_tnt_froze] at @s run function mmt_dynaball:weapons/tnt_arrow/maintain_froze
