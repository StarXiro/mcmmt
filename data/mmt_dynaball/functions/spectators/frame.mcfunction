
execute as @a[tag=dnb_spec] if score @s dnb_spec_tp_trigger matches 0.. run function mmt_dynaball:spectators/trigger_check
schedule function mmt_dynaball:spectators/frame 1t replace
