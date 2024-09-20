$scoreboard players set @a[tag=dnb_player, tag=$(slot_tag)] dnb_player_temp 0
data modify storage mcmmt:dynaball temp3 set from storage mcmmt:dynaball save_load.boundaries.refill.team_a
data modify storage mcmmt:dynaball temp2 set from storage mcmmt:dynaball save_load.boundaries.warn.team_a
$function mmt_dynaball:boundaries/do_per_team {slot_tag: "$(slot_tag)", team: "team_a"}
data modify storage mcmmt:dynaball temp3 set from storage mcmmt:dynaball save_load.boundaries.refill.team_b
data modify storage mcmmt:dynaball temp2 set from storage mcmmt:dynaball save_load.boundaries.warn.team_b
$function mmt_dynaball:boundaries/do_per_team {slot_tag: "$(slot_tag)", team: "team_b"}
$execute as @a[tag=dnb_player, tag=$(slot_tag), tag=!dnb_bd_warned] if score @s dnb_player_temp matches 1.. run function mmt_dynaball:boundaries/player_oob_assert
$execute as @a[tag=dnb_player, tag=$(slot_tag), tag=dnb_bd_warned] if score @s dnb_player_temp matches 0 run tag @s remove dnb_bd_warned