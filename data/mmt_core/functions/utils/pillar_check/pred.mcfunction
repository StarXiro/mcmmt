
scoreboard players set valid core_utils_pillar_check 1
scoreboard players set step core_utils_pillar_check 0
execute summon minecraft:marker run function mmt_core:utils/pillar_check/private/pc_shell
execute if score valid core_utils_pillar_check matches 1 run return 1
return fail
