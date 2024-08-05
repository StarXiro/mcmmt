
# setup core.utils.to_bin
data modify storage mcmmt:core_utils to_bin set value {bin: [B; 0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b], value: 0}

# utils.to_bin
scoreboard objectives add core_utils_to_bin dummy
scoreboard players set input core_utils_to_bin 0
scoreboard players set temp1 core_utils_to_bin 0
scoreboard players set temp2 core_utils_to_bin 0
scoreboard players set temp3 core_utils_to_bin 0
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
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.to_bin
