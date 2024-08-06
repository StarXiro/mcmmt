
# check
execute if score iter core_utils_range >= rb core_utils_range run return fail

# save
execute store result storage mcmmt:core_utils range.temp int 1.0 run scoreboard players get iter core_utils_range
data modify storage mcmmt:core_utils range.list append from storage mcmmt:core_utils range.temp

# next
scoreboard players operation iter core_utils_range += step core_utils_range
function mmt_core:utils/range/private/pos_run
