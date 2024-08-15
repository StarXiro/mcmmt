
data modify storage mcmmt:core_utils team set value {\
    temp: {},\
    macro_bag: {\
        for_each: {list: [], loop_body: ""},\
        leave: {key: "", pos: 0},\
        show: {team_id: 0, display: "", score: 0, color: "", key:""}\
    }\
}

scoreboard objectives add core_utils_team_id dummy
scoreboard objectives add core_utils_team dummy
scoreboard players set temp core_utils_team 0
scoreboard players set temp2 core_utils_team 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.team
