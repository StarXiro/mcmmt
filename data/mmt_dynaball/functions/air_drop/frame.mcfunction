
execute as @e[type=minecraft:block_display, tag=dnb_airdrop] at @s run tp @s ~ ~-0.05 ~
execute as @e[type=minecraft:block_display, tag=dnb_airdrop] at @s unless block ~ ~-0.5 ~ #mmt_core:all_air run function mmt_dynaball:air_drop/apply_drop

# add another frame
schedule function mmt_dynaball:air_drop/frame 1t append
