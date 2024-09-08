
execute as @a[tag=dnb_player, tag=dnb_bd_warned] at @s run function mmt_dynaball:boundaries/show_warn

# next frame
schedule function mmt_dynaball:boundaries/warn_frame 4s replace
