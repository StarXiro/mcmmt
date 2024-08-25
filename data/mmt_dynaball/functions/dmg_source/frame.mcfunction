
execute as @a[tag=dnb_player] if score @s dnb_dmg_valid matches 1 run scoreboard players set @s dnb_dmg_source -1
execute as @a[tag=dnb_player] if score @s dnb_dmg_valid matches 1.. run scoreboard players remove @s dnb_dmg_valid 1

# schedule next
schedule function mmt_dynaball:dmg_source/frame 1s replace
