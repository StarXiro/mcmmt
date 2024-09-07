# move values
$data modify storage mcmmt:dynaball save_load.team_a set value $(team_a)
$data modify storage mcmmt:dynaball save_load.team_b set value $(team_b)
$data modify storage mcmmt:dynaball temp set value $(cg)
data modify storage mcmmt:dynaball save_load.slot_tag set from storage mcmmt:dynaball temp.tag

# game id
$data modify storage mcmmt:dynaball save_load.game_id set value $(game_id)

# slot id
data modify storage mcmmt:dynaball save_load.slot_id set string storage mcmmt:dynaball temp.tag 9

# checker
data modify storage mcmmt:dynaball save_load.checker set value {}
$data modify storage mcmmt:dynaball save_load.checker.a_tot set value $(checker_a_tot)
$data modify storage mcmmt:dynaball save_load.checker.b_tot set value $(checker_b_tot)

# alive players
scoreboard players set temp3 dnb_system 0
$execute as @a[tag=dnb_player, team=$(team_a)] run scoreboard players add temp3 dnb_system 1
execute store result storage mcmmt:dynaball save_load.player_a_tot int 1.0 run scoreboard players get temp3 dnb_system
scoreboard players set temp3 dnb_system 0
$execute as @a[tag=dnb_player, team=$(team_b)] run scoreboard players add temp3 dnb_system 1
execute store result storage mcmmt:dynaball save_load.player_b_tot int 1.0 run scoreboard players get temp3 dnb_system

# slot boundaries
$data modify storage mcmmt:dynaball save_load.boundaries set value $(boundaries)

# TODO more builds
