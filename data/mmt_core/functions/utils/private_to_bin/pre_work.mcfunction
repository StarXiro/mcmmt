
execute if score input core_utils_to_bin matches ..-1 run return fail

# reset
scoreboard players set pos0 core_utils_to_bin 0
scoreboard players set pos1 core_utils_to_bin 0
scoreboard players set pos2 core_utils_to_bin 0
scoreboard players set pos3 core_utils_to_bin 0
scoreboard players set pos4 core_utils_to_bin 0
scoreboard players set pos5 core_utils_to_bin 0
scoreboard players set pos6 core_utils_to_bin 0
scoreboard players set pos7 core_utils_to_bin 0
scoreboard players set pos8 core_utils_to_bin 0
scoreboard players set pos9 core_utils_to_bin 0
scoreboard players set pos10 core_utils_to_bin 0
scoreboard players set pos11 core_utils_to_bin 0
scoreboard players set pos12 core_utils_to_bin 0
scoreboard players set pos13 core_utils_to_bin 0
scoreboard players set pos14 core_utils_to_bin 0
scoreboard players set pos15 core_utils_to_bin 0
scoreboard players set pos16 core_utils_to_bin 0
scoreboard players set pos17 core_utils_to_bin 0
scoreboard players set pos18 core_utils_to_bin 0
scoreboard players set pos19 core_utils_to_bin 0
scoreboard players set pos20 core_utils_to_bin 0
scoreboard players set pos21 core_utils_to_bin 0
scoreboard players set pos22 core_utils_to_bin 0
scoreboard players set pos23 core_utils_to_bin 0
scoreboard players set pos24 core_utils_to_bin 0
scoreboard players set pos25 core_utils_to_bin 0
scoreboard players set pos26 core_utils_to_bin 0
scoreboard players set pos27 core_utils_to_bin 0
scoreboard players set pos28 core_utils_to_bin 0
scoreboard players set pos29 core_utils_to_bin 0
scoreboard players set pos30 core_utils_to_bin 0
scoreboard players set pos31 core_utils_to_bin 0

# work
execute if score input core_utils_to_bin matches 1073741824.. run function mmt_core:utils/private_to_bin/do_position_30
execute if score input core_utils_to_bin matches 536870912.. run function mmt_core:utils/private_to_bin/do_position_29
execute if score input core_utils_to_bin matches 268435456.. run function mmt_core:utils/private_to_bin/do_position_28
execute if score input core_utils_to_bin matches 134217728.. run function mmt_core:utils/private_to_bin/do_position_27
execute if score input core_utils_to_bin matches 67108864.. run function mmt_core:utils/private_to_bin/do_position_26
execute if score input core_utils_to_bin matches 33554432.. run function mmt_core:utils/private_to_bin/do_position_25
execute if score input core_utils_to_bin matches 16777216.. run function mmt_core:utils/private_to_bin/do_position_24
execute if score input core_utils_to_bin matches 8388608.. run function mmt_core:utils/private_to_bin/do_position_23
execute if score input core_utils_to_bin matches 4194304.. run function mmt_core:utils/private_to_bin/do_position_22
execute if score input core_utils_to_bin matches 2097152.. run function mmt_core:utils/private_to_bin/do_position_21
execute if score input core_utils_to_bin matches 1048576.. run function mmt_core:utils/private_to_bin/do_position_20
execute if score input core_utils_to_bin matches 524288.. run function mmt_core:utils/private_to_bin/do_position_19
execute if score input core_utils_to_bin matches 262144.. run function mmt_core:utils/private_to_bin/do_position_18
execute if score input core_utils_to_bin matches 131072.. run function mmt_core:utils/private_to_bin/do_position_17
execute if score input core_utils_to_bin matches 65536.. run function mmt_core:utils/private_to_bin/do_position_16
execute if score input core_utils_to_bin matches 32768.. run function mmt_core:utils/private_to_bin/do_position_15
execute if score input core_utils_to_bin matches 16384.. run function mmt_core:utils/private_to_bin/do_position_14
execute if score input core_utils_to_bin matches 8192.. run function mmt_core:utils/private_to_bin/do_position_13
execute if score input core_utils_to_bin matches 4096.. run function mmt_core:utils/private_to_bin/do_position_12
execute if score input core_utils_to_bin matches 2048.. run function mmt_core:utils/private_to_bin/do_position_11
execute if score input core_utils_to_bin matches 1024.. run function mmt_core:utils/private_to_bin/do_position_10
execute if score input core_utils_to_bin matches 512.. run function mmt_core:utils/private_to_bin/do_position_9
execute if score input core_utils_to_bin matches 256.. run function mmt_core:utils/private_to_bin/do_position_8
execute if score input core_utils_to_bin matches 128.. run function mmt_core:utils/private_to_bin/do_position_7
execute if score input core_utils_to_bin matches 64.. run function mmt_core:utils/private_to_bin/do_position_6
execute if score input core_utils_to_bin matches 32.. run function mmt_core:utils/private_to_bin/do_position_5
execute if score input core_utils_to_bin matches 16.. run function mmt_core:utils/private_to_bin/do_position_4
execute if score input core_utils_to_bin matches 8.. run function mmt_core:utils/private_to_bin/do_position_3
execute if score input core_utils_to_bin matches 4.. run function mmt_core:utils/private_to_bin/do_position_2
execute if score input core_utils_to_bin matches 2.. run function mmt_core:utils/private_to_bin/do_position_1
execute if score input core_utils_to_bin matches 1.. run function mmt_core:utils/private_to_bin/do_position_0

# migrate
function mmt_core:utils/private_to_bin/move_answer
