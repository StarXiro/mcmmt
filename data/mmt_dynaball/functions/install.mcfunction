
data modify storage mcmmt:dynaball start_up set value {}

data modify storage mcmmt:dynaball games set value [{team_a:"red", team_b:"blue"}, {team_a:"yellow", team_b:"aqua"}]
data modify storage mcmmt:dynaball templates set value {game: {team_a:"", team_b: ""}}
data modify storage mcmmt:dynaball macro_bag set value {for_each:{list:[], loop_body:""}}

execute if score logon core_setting matches 1 run function mmt_dynaball:info

# CutomModelData
# tnt_arrow 11
# tnt_chick teamB 12 teamA 13