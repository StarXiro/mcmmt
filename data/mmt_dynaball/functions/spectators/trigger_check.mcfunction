
execute if score @s dnb_spec_tp_trigger >= to_build dnb_system run return run function mmt_dynaball:spectators/invalid_index {tip: "未知的场地ID！"}

execute store result storage mcmmt:dynaball macro_bag.get.pos int 1.0 run scoreboard players get @s dnb_spec_tp_trigger
data modify storage mcmmt:dynaball macro_bag.get.path set value "spec_teleport"
function mmt_dynaball:tools/get with storage mcmmt:dynaball macro_bag.get

# perform teleport
function mmt_dynaball:spectators/perform_tp with storage mcmmt:dynaball macro_bag.get

scoreboard players set @s dnb_spec_tp_trigger -1
scoreboard players enable @s dnb_spec_tp_trigger
