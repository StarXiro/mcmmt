
# check frame
execute if score cg_second dnb_system matches 2 run function mmt_dynaball:cg/perform_frame {name: "goto_side"}
execute if score cg_second dnb_system matches 7 run function mmt_dynaball:cg/perform_frame {name: "air_drop"}
execute if score cg_second dnb_system matches 12 run function mmt_dynaball:cg/perform_frame {name: "show_item"}
execute if score cg_second dnb_system matches 15 run function mmt_dynaball:cg/perform_frame {name: "break_tnt"}
execute if score cg_second dnb_system matches 18 run function mmt_dynaball:cg/perform_frame {name: "fix_block"}
execute if score cg_second dnb_system matches 19 run function mmt_dynaball:cg/perform_frame {name: "explosion"}
execute if score cg_second dnb_system matches 21 run function mmt_dynaball:cg/perform_frame {name: "place_fix"}
execute if score cg_second dnb_system matches 24 run function mmt_dynaball:cg/perform_frame {name: "end"}
execute if score cg_second dnb_system matches 28.. run return run function mmt_dynaball:cg/end_cg

# check words
execute if score cg_second dnb_system matches 0 run function mmt_dynaball:cg/words/welcome
execute if score cg_second dnb_system matches 2 run function mmt_dynaball:cg/words/goto_side
execute if score cg_second dnb_system matches 7 run function mmt_dynaball:cg/words/air_drop
execute if score cg_second dnb_system matches 12 run function mmt_dynaball:cg/words/show_item
execute if score cg_second dnb_system matches 18 run function mmt_dynaball:cg/words/fix_block
execute if score cg_second dnb_system matches 24 run function mmt_dynaball:cg/words/end

# schedule next
scoreboard players add cg_second dnb_system 1
schedule function mmt_dynaball:cg/cg_second 1s replace
