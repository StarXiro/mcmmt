execute if score @s dnb_tnt_last_mz matches ..-1 run function mmt_dynaball:collision/freeze_tnt {pos: "~ ~ ~-0.6"}
execute if score @s dnb_tnt_last_mz matches 0.. run function mmt_dynaball:collision/freeze_tnt {pos: "~ ~ ~0.6"}
