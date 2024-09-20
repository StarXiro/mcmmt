# move values
$data modify storage mcmmt:dynaball save_load.team_a set value $(team_a)
$data modify storage mcmmt:dynaball save_load.team_b set value $(team_b)
$data modify storage mcmmt:dynaball temp set value $(cg)
data modify storage mcmmt:dynaball save_load.slot_tag set from storage mcmmt:dynaball temp.tag

# running flg
data modify storage mcmmt:dynaball save_load.running set value 1b

# game id
$data modify storage mcmmt:dynaball save_load.game_id set value $(game_id)

# spec_tp
$data modify storage mcmmt:dynaball save_load.spec_tp set value "$(spec_tp)"

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
data modify storage mcmmt:dynaball save_load.player_a_died set value 0
data modify storage mcmmt:dynaball save_load.player_b_died set value 0

# slot boundaries
$data modify storage mcmmt:dynaball save_load.boundaries set value $(boundaries)

# team data
$data modify storage mcmmt:dynaball save_load.team_data.a_data set from storage mcmmt:core team_data.$(team_a)
$data modify storage mcmmt:dynaball save_load.team_data.b_data set from storage mcmmt:core team_data.$(team_b)

# TODO more builds
