
# adjustable
data modify storage mcmmt:dynaball start_up set value {team_list: [], progress: 0, max_progress: 8, force_load: ["0 0 100 100", "200 200 400 400"]}
# config
data modify storage mcmmt:dynaball maps set value [\
    {map_name: "nether", clone_a: "0 0 0 50 50 50", clone_b: "0 0 0 50 50 50", length: 10}\
]
data modify storage mcmmt:dynaball lobby set value {spawn: "0 50 0"}
data modify storage mcmmt:dynaball map_slots set value [\
    {slot_a: "100 50 100", slot_b: "-100 50 -100", team_a_spawn: "0 0", team_b_spawn: "0 0"}\
]

# inner use
data modify storage mcmmt:dynaball system set value {round: 0, rounds: [], present_round: [], board_names: [], progress: 0, max_progress: 0}

data modify storage mcmmt:dynaball board_saves set value []
data modify storage mcmmt:dynaball games set value []
data modify storage mcmmt:dynaball temp set value {}
data modify storage mcmmt:dynaball build_slots set value []

data modify storage mcmmt:dynaball macro_bag set value {\
    bfs:{\
        setting:{x:[0,0], y:[0,0], z:[0,0], max_depth:0, max_steps: 0, direction: 0, on_block: ""},\
        pos:{x:0, y:0, z:0}\
    },\
    for_each:{list:[],loop_body:""},\
    make_match:{list:[]},\
    shuffle:{list:[]},\
    len: {list:[]},\
    range: {args:[]},\
    \
    get: {pos: 0, path: "", result: {}},\
    make_board: {team_a: "", team_b: "", ac: "", bc: "", map_name: "", p: 0, max_p: 0, r: 0, max_r: 0, game_id: 0},\
    game: {team_a: "", team_b: "", map_id: 0, game_id: 0},\
    random: {lp: 0, rp: 0},\
    slot: {},\
    build_slot: {index: 0},\
    before_match: {second: 0}\
}

scoreboard objectives add dnb_system dummy
scoreboard players set temp dnb_system 0
scoreboard players set to_build dnb_system 0
scoreboard players set build_flag dnb_system 0
scoreboard players set round dnb_system 0
scoreboard players set max_match dnb_system 0
scoreboard players set max_slot dnb_system 0
scoreboard players set max_round dnb_system 0
scoreboard players set max_map_id dnb_system 0
scoreboard players set #gr_save dnb_system 0
scoreboard players set #wait_length dnb_system 120
scoreboard players set #waiting dnb_system -1

execute if score logon core_setting matches 1 run function mmt_dynaball:info

# CutomModelData
# tnt_arrow 11
# tnt_chick teamB 12 teamA 13