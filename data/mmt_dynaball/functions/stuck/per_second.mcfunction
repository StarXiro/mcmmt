
execute if score @s dnb_stuck_cnt matches 3 run function mmt_dynaball:stuck/drop_tnt
execute if score @s dnb_stuck_cnt matches 2 run function mmt_dynaball:stuck/drop_tnt
execute if score @s dnb_stuck_cnt matches 1 run function mmt_dynaball:stuck/end_stuck

scoreboard players remove @s dnb_stuck_cnt 1
