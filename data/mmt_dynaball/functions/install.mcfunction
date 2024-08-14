
data modify storage mcmmt:dynaball start_up set value {team_list: []}

data modify storage mcmmt:dynaball system set value {round: 1}

data modify storage mcmmt:dynaball games set value []
data modify storage mcmmt:dynaball maps set value {nether: {}}

data modify storage mcmmt:dynaball templates set value {game: {team_a:"", team_b: "", map_id: ""}}

data modify storage mcmmt:dynaball macro_bag set value {for_each:{list:[], loop_body:""}, make_match: {list:[], round: 0}}

execute if score logon core_setting matches 1 run function mmt_dynaball:info

# CutomModelData
# tnt_arrow 11
# tnt_chick teamB 12 teamA 13