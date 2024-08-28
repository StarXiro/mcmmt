
execute as @e[type=minecraft:tnt, tag=dnb_tnt_proj, tag=dnb_tnt_inactive] run function mmt_dynaball:collision/main

# schedule next
schedule function mmt_dynaball:collision/frame 1t replace
