
execute as @a run function mmt_core:statistics/valid_check

# loop it
schedule function mmt_core:per_sec 1s
