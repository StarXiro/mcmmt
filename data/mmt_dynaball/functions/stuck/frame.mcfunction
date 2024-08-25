
execute as @a[tag=dnb_player, tag=dnb_stuck] at @s if score @s dnb_stuck_cnt matches 1.. run function mmt_dynaball:stuck/per_second

# schedule next
schedule function mmt_dynaball:stuck/frame 1s replace
