
# weapons
function mmt_dynaball:weapons/tnt_arrow/on_tick
function mmt_dynaball:weapons/boom_chick/on_tick
function mmt_dynaball:weapons/air_strike/on_tick
function mmt_dynaball:weapons/sand_arrow/on_tick

# stuck
execute as @a[tag=player_dynaball, tag=dnb_stuck_with_tnt] at @s run function mmt_dynaball:stuck/do_stuck
execute as @a[tag=player_dynaball, tag=dnb_self_explose] at @s run function mmt_dynaball:stuck/check_explose

# touch bomb
execute as @e[type=minecraft:tnt, tag=touch_bomb, nbt={OnGround:1b}] at @s run function mmt_dynaball:touch_bomb/prime

# fix blocks
execute as @e[type=minecraft:item] at @s if function mmt_dynaball:blocks/drop_check run function mmt_dynaball:blocks/drop_replace

# loop
schedule function mmt_dynaball:on_tick 1t replace