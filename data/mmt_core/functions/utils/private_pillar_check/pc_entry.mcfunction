
execute if score step core_utils_pillar_check > max_steps core_utils_pillar_check run return fail
execute unless block ~ ~ ~ #mmt_core:all_air run return run scoreboard players set valid core_utils_pillar_check 0
execute if score direction core_utils_pillar_check matches 0 run tp @s ~ ~-1 ~
execute if score direction core_utils_pillar_check matches 1 run tp @s ~ ~1 ~
scoreboard players add step core_utils_pillar_check 1

execute as @s at @s run function mmt_core:utils/private_pillar_check/pc_entry
