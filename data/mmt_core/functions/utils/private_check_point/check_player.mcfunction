
# show marker
execute if score show_marker core_utils_check_point matches 1 run function mmt_core:utils/private_check_point/display_marker with entity @s data

execute unless entity @a[tag=mmt_cp_user, distance=..0.75] run return fail

execute store result score index core_utils_check_point run data get entity @s data.id
execute as @a[tag=mmt_cp_user, distance=..0.75] run function mmt_core:utils/private_check_point/update_cpid

data modify storage mcmmt:core_utils check_point.call_bag.target set from entity @s data.target
execute as @a[tag=mmt_cp_user, distance=..0.75, tag=cu_cp_valid] at @s run function mmt_core:utils/private_check_point/trigger_callback with storage mcmmt:core_utils check_point.call_bag
