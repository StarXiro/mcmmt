# move values
$data modify storage mcmmt:dynaball save_load.team_a set value $(team_a)
$data modify storage mcmmt:dynaball save_load.team_b set value $(team_b)
$data modify storage mcmmt:dynaball temp set value $(cg)
data modify storage mcmmt:dynaball save_load.tag set from storage mcmmt:dynaball temp.tag

# alive players

