
execute as @a run function mmt_core:statistics/valid_check
function mmt_core:utils/private_timer/per_sec

# loop it
schedule function mmt_core:per_sec 1s replace
