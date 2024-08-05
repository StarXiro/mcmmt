#data initialize
data modify storage mcmmt:core_utils SBSconfig set value {score: 0, scoreboardname: "core_utils_sbs_temp",loop_max: 32,loop_cnt: 0}

#scoreboard initialize
scoreboard objectives add core_utils_sbs_temp dummy
scoreboard objectives add core_utils_sbs_rank dummy
scoreboard objectives add core_utils_sbs_prank dummy
scoreboard objectives add core_utils_sbs_sort dummy
scoreboard players set SBS_temp core_utils_sbs_sort 0
execute if score logon core_setting matches 1 run say Inited scoreboards for core.utils.sbs