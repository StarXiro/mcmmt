
execute if score checker_index dnb_system >= to_build dnb_system run return fail
execute store result storage mcmmt:dynaball macro_bag.get.pos int 1.0 run scoreboard players get checker_index dnb_system
data modify storage mcmmt:dynaball macro_bag.checker.index set from storage mcmmt:dynaball macro_bag.get.pos
data modify storage mcmmt:dynaball macro_bag.get.path set value "games"
function mmt_dynaball:tools/get with storage mcmmt:dynaball macro_bag.get

# broadcast progress
data modify storage mcmmt:dynaball macro_bag.checker.map_name set from storage mcmmt:dynaball macro_bag.get.result.game_id
function mmt_dynaball:checker/bc_progress with storage mcmmt:dynaball macro_bag.checker

data modify storage mcmmt:dynaball temp set from storage mcmmt:dynaball macro_bag.get.result.checker
data modify storage mcmmt:dynaball macro_bag.checker.summon.y set from storage mcmmt:dynaball temp.layer

data modify storage mcmmt:dynaball macro_bag.checker.summon.index set from storage mcmmt:dynaball macro_bag.checker.index

# team_a
data modify storage mcmmt:dynaball macro_bag.checker.summon.team set value "dnb_checker_a"

data modify storage mcmmt:dynaball macro_bag.range.args set from storage mcmmt:dynaball temp.range_a.x
function mmt_core:utils/range/do with storage mcmmt:dynaball macro_bag.range
data modify storage mcmmt:dynaball macro_bag.checker.range.out set from storage mcmmt:core_utils range.list

data modify storage mcmmt:dynaball macro_bag.range.args set from storage mcmmt:dynaball temp.range_a.z
function mmt_core:utils/range/do with storage mcmmt:dynaball macro_bag.range
data modify storage mcmmt:dynaball macro_bag.checker.range.in set from storage mcmmt:core_utils range.list

# outer loop
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball macro_bag.checker.range.out
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:checker/inner_loop"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

# team_b
data modify storage mcmmt:dynaball macro_bag.checker.summon.team set value "dnb_checker_b"

data modify storage mcmmt:dynaball macro_bag.range.args set from storage mcmmt:dynaball temp.range_b.x
function mmt_core:utils/range/do with storage mcmmt:dynaball macro_bag.range
data modify storage mcmmt:dynaball macro_bag.checker.range.out set from storage mcmmt:core_utils range.list

data modify storage mcmmt:dynaball macro_bag.range.args set from storage mcmmt:dynaball temp.range_b.z
function mmt_core:utils/range/do with storage mcmmt:dynaball macro_bag.range
data modify storage mcmmt:dynaball macro_bag.checker.range.in set from storage mcmmt:core_utils range.list

# outer loop
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball macro_bag.checker.range.out
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:checker/inner_loop"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

# random decay
data modify storage mcmmt:dynaball macro_bag.random.lp set value 0
data modify storage mcmmt:dynaball macro_bag.random.rp set value 99
execute as @e[type=minecraft:marker, tag=dnb_checker] at @s run function mmt_dynaball:checker/random_decay

# do check
scoreboard players set direction core_utils_pillar_check 1
scoreboard players set max_steps core_utils_pillar_check 40
execute as @e[type=minecraft:marker, tag=dnb_checker] at @s if function mmt_core:utils/pillar_check/pred run kill @s

# collect data
execute store result storage mcmmt:dynaball macro_bag.put.pos int 1.0 run scoreboard players get checker_index dnb_system
data modify storage mcmmt:dynaball macro_bag.put.path set value "games"

scoreboard players set temp dnb_system 0
execute as @e[type=minecraft:marker, tag=dnb_checker_a] run scoreboard players add temp dnb_system 1
execute store result storage mcmmt:dynaball macro_bag.put.what int 1.0 run scoreboard players get temp dnb_system
data modify storage mcmmt:dynaball macro_bag.put.trail set value ".checker_a_tot"
function mmt_dynaball:tools/put with storage mcmmt:dynaball macro_bag.put

scoreboard players set temp dnb_system 0
execute as @e[type=minecraft:marker, tag=dnb_checker_b] run scoreboard players add temp dnb_system 1
execute store result storage mcmmt:dynaball macro_bag.put.what int 1.0 run scoreboard players get temp dnb_system
data modify storage mcmmt:dynaball macro_bag.put.trail set value ".checker_b_tot"
function mmt_dynaball:tools/put with storage mcmmt:dynaball macro_bag.put

# schedule next
scoreboard players add checker_index dnb_system 1
schedule function mmt_dynaball:checker/looper 1s replace
