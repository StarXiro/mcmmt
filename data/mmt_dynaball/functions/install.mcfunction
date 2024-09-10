
# adjustable
data modify storage mcmmt:dynaball start_up set value {team_list: ["red", "blue", "aqua"], progress: 0, max_progress: 8, force_load: ["0 0 100 100", "200 200 400 400"]}
# config
data modify storage mcmmt:dynaball game_scores set value {\
    eliminate: {ps: 20, ts: 0},\
    survive: {ps: 50, ts: 0},\
    win: {ps: 0, ts: 240},\
    draw: {ps: 0, ts: 120}\
}
data modify storage mcmmt:dynaball maps set value [\
    {map_name: "nether", clone_a: "0 -20 0 50 50 50", clone_b: "0 -20 0 50 50 50", length: 10}\
]
data modify storage mcmmt:dynaball weapons set value [\
    {id:"minecraft:paper"},\
    {id:"minecraft:stick"}\
]
data modify storage mcmmt:dynaball msg_list set value {\
    no_source_death: [\
        "%s 似了 ^u^",\
    ],\
    source_death: [\
        "%s 被 %s 炸似了",\
    ]\
}
data modify storage mcmmt:dynaball limitations set value {\
    eliminate: -18,\
    mid_divide: 5021\
}
data modify storage mcmmt:dynaball lobby set value {spawn: "0 50 0"}
data modify storage mcmmt:dynaball map_slots set value [\
    {\
        slot_a: "100 50 100",\
        slot_b: "0 50 100", \
        team_a_spawn: "0 0", \
        team_b_spawn: "0 0", \
        spec_tp: "100 50 100", \
        cg: {\
            transport: {pos: "75 102 120", face: "facing ^ ^-1 ^0.2"},\
            goto_side: {pos: "75 72 80", face: "0 20.0"}, \
            air_drop: {pos: "113.9 71.2 116.2", face: "-48.6 5.3", drop: "116.5 72 118.5"}, \
            show_item: {pos: "124.0 71.1 115.4", face: "134.6 15.5", summon: "121.5 70 114.5", place: "122 70 113", last_place: "116 69 118"}, \
            break_tnt: {pos: "122 70 113"}, \
            fix_block: {pos: "113.7 73.3 126.1", face: "-145.5 42.5", place: "115 72 123", fill: "114 67 122 116 67 124"}, \
            explosion: {place: "115 72 123"}, \
            place_fix: {place: "115 68 123"}, \
            end: {fill: "114 67 122 116 67 124", place: "115 68 123", pos: "75.1 108 128.3", face: "-0.5 90"}\
        }, \
        checker: {layer: 1, range_a: {x: [-10, 10], z: [-5, 0]}, range_b: {x: [-10, 10], z: [0, 5]}},\
        boundaries: {\
            warn: {\
                team_a: {\
                    top: 60,\
                    left: -10,\
                    right: 10,\
                    front: 10,\
                    back: 10\
                },\
                team_b: {\
                    top: 60,\
                    left: -10,\
                    right: 10,\
                    front: 10,\
                    back: 10\
                }\
            },\
            refill: {\
                team_a: {\
                    top: "0 0 0 0 0 0",\
                    left: "0 0 0 0 0 0",\
                    right: "0 0 0 0 0 0",\
                    front: "0 0 0 0 0 0",\
                    back: "0 0 0 0 0 0"\
                },\
                team_b: {\
                    top: "0 0 0 0 0 0",\
                    left: "0 0 0 0 0 0",\
                    right: "0 0 0 0 0 0",\
                    front: "0 0 0 0 0 0",\
                    back: "0 0 0 0 0 0" \
                }\
            }\
        }\
    },\
    {\
        slot_a: "100 50 100",\
        slot_b: "0 50 100", \
        team_a_spawn: "0 0", \
        team_b_spawn: "0 0", \
        spec_tp: "100 50 100", \
        cg: {\
            transport: {pos: "75 102 120", face: "facing ^ ^-1 ^0.2"},\
            goto_side: {pos: "75 72 80", face: "0 20.0"}, \
            air_drop: {pos: "113.9 71.2 116.2", face: "-48.6 5.3", drop: "116.5 72 118.5"}, \
            show_item: {pos: "124.0 71.1 115.4", face: "134.6 15.5", summon: "121.5 70 114.5", place: "122 70 113", last_place: "116 69 118"}, \
            break_tnt: {pos: "122 70 113"}, \
            fix_block: {pos: "113.7 73.3 126.1", face: "-145.5 42.5", place: "115 72 123", fill: "114 67 122 116 67 124"}, \
            explosion: {place: "115 72 123"}, \
            place_fix: {place: "115 68 123"}, \
            end: {fill: "114 67 122 116 67 124", place: "115 68 123", pos: "75.1 108 128.3", face: "-0.5 90"}\
        }, \
        checker: {layer: 1, range_a: {x: [-10, 10], z: [-5, 0]}, range_b: {x: [-10, 10], z: [0, 5]}},\
        boundaries: {\
            warn: {\
                team_a: {\
                    top: 60,\
                    left: -10,\
                    right: 10,\
                    front: 10,\
                    back: 10\
                },\
                team_b: {\
                    top: 60,\
                    left: -10,\
                    right: 10,\
                    front: 10,\
                    back: 10\
                }\
            },\
            refill: {\
                team_a: {\
                    top: "0 0 0 0 0 0",\
                    left: "0 0 0 0 0 0",\
                    right: "0 0 0 0 0 0",\
                    front: "0 0 0 0 0 0",\
                    back: "0 0 0 0 0 0" \
                },\
                team_b: {\
                    top: "0 0 0 0 0 0",\
                    left: "0 0 0 0 0 0",\
                    right: "0 0 0 0 0 0",\
                    front: "0 0 0 0 0 0",\
                    back: "0 0 0 0 0 0" \
                }\
            }\
        }\
    } \
]

# inner use
data modify storage mcmmt:dynaball system set value {round: 0, rounds: [], present_round: [], board_names: [], progress: 0, max_progress: 0}

data modify storage mcmmt:dynaball board_saves set value []
data modify storage mcmmt:dynaball games set value []

data modify storage mcmmt:dynaball temp set value {}
data modify storage mcmmt:dynaball temp2 set value {}
data modify storage mcmmt:dynaball temp3 set value {}

data modify storage mcmmt:dynaball build_slots set value []
data modify storage mcmmt:dynaball spec_teleport set value []
data modify storage mcmmt:dynaball save_load set value {}

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
    put: {pos: 0, path: "", what: {}, trail: ""},\
    make_board: {team_a: "", team_b: "", ac: "", bc: "", map_name: "", p: 0, max_p: 0, r: 0, max_r: 0, game_id: 0},\
    game: {team_a: "", team_b: "", map_id: 0, game_id: 0},\
    random: {lp: 0, rp: 0},\
    slot: {},\
    build_slot: {index: 0},\
    before_match: {second: 0, team: ""},\
    set_main_display: {color: "", team: ""},\
    frame: {},\
    call_frame: {},\
    team_tag: {team: "", tag: ""},\
    checker: {index: 0, map_name:"", range: {out: [], in:[]}, summon: {team: "", index: 0, x: 0, y: 0, z: 0}}, \
    main_display: {team: "", color: "", p: 0, mp: 0},\
    add_slot_tag: {team_a:"", team_b: "", index: 0},\
    spec_display: {team: "", p: 0, mp: 0, r: 0, mr: 0},\
    sd_set_pair: {team_a: "", team_b: "", index: 0, ca:"", cb:""},\
    show_vs: {team_a: "", team_b: "", round: 0, id: "", ca: "", cb: ""},\
    message: {\
        template: "", score: 0, index: 0, slot_tag: "" \
    },\
    update_checker: {ap: 0, bp: 0, id: 0},\
    perform_refill: {range: "0 0 0 0 0 0"}, \
    end_slot_title: {color: "", team: "", tc: "", tag: ""}, \
    end_slot_bc: {a: "", b: "", ac: "", bc: ""}\
}

scoreboard objectives add dnb_system dummy

scoreboard players set game_running dnb_system 0

scoreboard players set temp dnb_system 0
scoreboard players set temp2 dnb_system 0
scoreboard players set temp3 dnb_system 0
scoreboard players set temp4 dnb_system 0

scoreboard players set -1 dnb_system -1
scoreboard players set 100 dnb_system 100
scoreboard players set to_build dnb_system 0
scoreboard players set build_flag dnb_system 0
scoreboard players set round dnb_system 0
scoreboard players set max_match dnb_system 0
scoreboard players set max_slot dnb_system 0
scoreboard players set max_round dnb_system 0
scoreboard players set max_map_id dnb_system 0
scoreboard players set #gr_save dnb_system 0
scoreboard players set #wait_length dnb_system 120
scoreboard players set #waiting dnb_system 120
scoreboard players set #rand_item_len dnb_system 0
scoreboard players set cg_second dnb_system 0
scoreboard players set collision_limit dnb_system 5000
scoreboard players set tnt_arrow_scaler dnb_system 70
scoreboard players set checker_index dnb_system 0
scoreboard players set checker_decay dnb_system 50
scoreboard players set ongoing_games dnb_system 0
scoreboard players set eliminate dnb_system 0
scoreboard players set mid_divide dnb_system 0

# tnt collision
scoreboard objectives add dnb_tnt_motion_x dummy
scoreboard objectives add dnb_tnt_motion_y dummy
scoreboard objectives add dnb_tnt_motion_z dummy
scoreboard objectives add dnb_tnt_last_mx dummy
scoreboard objectives add dnb_tnt_last_my dummy
scoreboard objectives add dnb_tnt_last_mz dummy

# dmg source
scoreboard objectives add dnb_dmg_valid dummy
scoreboard objectives add dnb_dmg_source dummy

# stuck countdown
scoreboard objectives add dnb_stuck_cnt dummy

# player temp
scoreboard objectives add dnb_player_temp dummy

# score management
scoreboard objectives add dnb_player_score dummy
scoreboard objectives add dnb_team_score dummy
scoreboard objectives add dnb_total_score dummy

execute if score logon core_setting matches 1 run function mmt_dynaball:info

# CustomModelData
# tnt_arrow teamA 1504001 teamB 1504002
# tnt_chick teamB 12 teamA 13