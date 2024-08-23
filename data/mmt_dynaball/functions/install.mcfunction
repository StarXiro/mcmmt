
# adjustable
data modify storage mcmmt:dynaball start_up set value {team_list: ["red", "blue"], progress: 0, max_progress: 8, force_load: ["0 0 100 100", "200 200 400 400"]}
# config
data modify storage mcmmt:dynaball maps set value [\
    {map_name: "nether", clone_a: "0 -20 0 50 50 50", clone_b: "0 -20 0 50 50 50", length: 10}\
]
data modify storage mcmmt:dynaball weapons set value [\
    {id:"minecraft:paper"},\
    {id:"minecraft:stick"}\
]
data modify storage mcmmt:dynaball lobby set value {spawn: "0 50 0"}
data modify storage mcmmt:dynaball map_slots set value [\
    {slot_a: "100 50 100", slot_b: "0 50 100", team_a_spawn: "0 0", team_b_spawn: "0 0", cg: {transport: {pos: "75 100 120", face: "facing ^ ^-1 ^0.2"},  goto_side: {pos: "75 70 80", face: "0 20.0"}, air_drop: {pos: "113.9 69.2 116.2", face: "-48.6 5.3", drop: "116.5 72 118.5"}, show_item: {pos: "124.0 69.1 115.4", face: "134.6 15.5", summon: "121.5 70 114.5", place: "122 70 113", last_place: "116 69 118"}, break_tnt: {pos: "122 70 113"}, fix_block: {pos: "113.7 71.3 126.1", face: "-145.5 42.5", place: "115 72 123", fill: "114 67 122 116 67 124"}, explosion: {place: "115 72 123"}, place_fix: {place: "115 68 123"}, end: {fill: "114 67 122 116 67 124", place: "115 68 123", pos: "75.1 106 128.3", face: "-0.5 90"}}}\
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
    before_match: {second: 0},\
    frame: {},\
    call_frame: {}\
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
scoreboard players set #rand_item_len dnb_system 0
scoreboard players set cg_second dnb_system 0

execute if score logon core_setting matches 1 run function mmt_dynaball:info

# CustomModelData
# tnt_arrow 11
# tnt_chick teamB 12 teamA 13