
# tnt arrow
function mmt_dynaball:weapons/tnt_arrow/on_tick

# stuck
execute as @a[tag=player_dynaball, tag=dnb_stuck_with_tnt] at @s run function mmt_dynaball:stuck/do_stuck
execute as @a[tag=player_dynaball, tag=dnb_self_explose] at @s run function mmt_dynaball:stuck/check_explose

# fix blocks
# ignored custom model data: 11
# ~$ execute as @e[type=minecraft:item, nbt=!{Item:{tag:{CustomModelData:${fix_block_ignore}}}}] at @s run function mmt_dynaball:blocks/drop_replace
execute as @e[type=minecraft:item, nbt=!{Item:{tag:{CustomModelData:11}}}] at @s run function mmt_dynaball:blocks/drop_replace

# loop
schedule function mmt_dynaball:on_tick 1t replace