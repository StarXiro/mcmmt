# freeze
execute as @e[type=minecraft:tnt, tag=dnb_tnt_proj, tag=dnb_tnt_freeze] at @s if function mmt_dynaball:tnt_proj/pred run function mmt_dynaball:tnt_proj/detach
# on ground
execute as @e[type=minecraft:tnt, tag=dnb_tnt_proj, tag=dnb_tnt_inactive, nbt={OnGround:1b}] at @s run function mmt_dynaball:tnt_proj/activate
# next
schedule function mmt_dynaball:tnt_proj/frame 1t replace
