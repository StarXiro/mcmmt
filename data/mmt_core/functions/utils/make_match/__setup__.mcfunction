
data modify storage mcmmt:core_utils make_match set value {\
    origin_list: [],\
    length: 0,\
    macro_bag: {\
        for_each: {list: [], loop_body: ""},\
        range: {args: []},\
        len: {list:[]},\
        set_pos: {pos: 0, value: 0},\
        get_make: {pos1: 0, pos2: 0},\
        origin: {pos: 0},\
        show_line: {index: 0, team_a: {}, team_b: {}, con: ""}\
    },\
    item_range:[],\
    pair_range:[],\
    round_range:[],\
    make_round: [],\
    match: {team: ""},\
    tuples: [],\
    rounds: [],\
    max_id: -1,\
    temp: 0\
}

scoreboard objectives add core_utils_make_match dummy
scoreboard players set temp core_utils_make_match 0
scoreboard players set temp2 core_utils_make_match 0
scoreboard players set jump core_utils_make_match 0
scoreboard players set is_even core_utils_make_match 0 
scoreboard players set length core_utils_make_match 0
scoreboard players set item_cnt core_utils_make_match 0
scoreboard players set max_round core_utils_make_match 0
scoreboard players set max_pair core_utils_make_match 0
scoreboard players set round core_utils_make_match 0
scoreboard players set max_id_pos core_utils_make_match 0
scoreboard players set front_pos core_utils_make_match 0
scoreboard players set front_value core_utils_make_match 0
scoreboard players set ring_pos core_utils_make_match 0
scoreboard players set ring_value core_utils_make_match 0
scoreboard players set ring_iter core_utils_make_match 0
scoreboard players set ring_mod core_utils_make_match 0
scoreboard players set max_id core_utils_make_match 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.make_match
