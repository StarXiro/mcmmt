
execute if score last core_utils_shuffle matches 0 run return fail

execute store result storage mcmmt:core_utils shuffle.macro_bag.p1 int 1.0 run scoreboard players get last core_utils_shuffle
function mmt_core:utils/shuffle/private/get_random with storage mcmmt:core_utils shuffle.macro_bag

execute store result storage mcmmt:core_utils shuffle.macro_bag.p2 int 1.0 run scoreboard players get chosen core_utils_shuffle
function mmt_core:utils/shuffle/private/swap with storage mcmmt:core_utils shuffle.macro_bag

scoreboard players remove last core_utils_shuffle 1
function mmt_core:utils/shuffle/private/iteration
