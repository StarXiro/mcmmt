$scoreboard players set temp3 dnb_system $(player_a_died)
$scoreboard players set temp4 dnb_system $(player_b_died)
$execute if entity @s[tag=$(team_a)] run scoreboard players add temp3 dnb_system 1
$execute if entity @s[tag=$(team_b)] run scoreboard players add temp4 dnb_system 1
execute store result storage mcmmt:dynaball save_load.player_a_died int 1.0 run scoreboard players get temp3 dnb_system
execute store result storage mcmmt:dynaball save_load.player_b_died int 1.0 run scoreboard players get temp4 dnb_system
$tp @s $(spec_tp)