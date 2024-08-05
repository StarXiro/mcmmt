
# update online player
scoreboard players set online_player core_setting 0
execute as @a run scoreboard players add online_player core_setting 1

# validate
execute as @a run function mmt_core:valid_check

# loop it
schedule function mmt_core:per_sec 1s replace
