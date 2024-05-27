
# tnt arrow
function mmt_dynaball:weapons/tnt_arrow/on_tick
function mmt_dynaball:weapons/boom_chick/on_tick

# stuck
execute as @a[tag=player_dynaball, tag=dnb_stuck_with_tnt] at @s run function mmt_dynaball:stuck/do_stuck
execute as @a[tag=player_dynaball, tag=dnb_self_explose] at @s run function mmt_dynaball:stuck/check_explose

# fix blocks
execute as @e[type=minecraft:item] at @s if function mmt_dynaball:blocks/drop_check run function mmt_dynaball:blocks/drop_replace

# loop
schedule function mmt_dynaball:on_tick 1t replace