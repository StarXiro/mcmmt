execute if score temp3 dnb_system matches 0 run return fail
execute if score temp3 dnb_system matches 1 run return run function mmt_dynaball:game_end/end_slot/team_b_win with storage mcmmt:dynaball save_load
execute if score temp3 dnb_system matches 2 run return run function mmt_dynaball:game_end/end_slot/team_a_win with storage mcmmt:dynaball save_load
execute if score temp3 dnb_system matches 3 run return run function mmt_dynaball:game_end/end_slot/draw with storage mcmmt:dynaball save_load