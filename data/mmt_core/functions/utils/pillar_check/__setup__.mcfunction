
# setup core.utils.pillar_check
# No storage

# utils.pillar_check
scoreboard objectives add core_utils_pillar_check dummy
scoreboard players set max_steps core_utils_pillar_check 30
scoreboard players set direction core_utils_pillar_check 0
scoreboard players set step core_utils_pillar_check 0
scoreboard players set valid core_utils_pillar_check 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.pillar_check
