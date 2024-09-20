scoreboard players set temp2 dnb_system 0
$execute store result score temp3 dnb_system run data get storage mcmmt:dynaball temp2.$(part) 1.0
$execute as @a[tag=dnb_player, tag=$(slot_tag), tag=$(team)] at @s run function mmt_dynaball:boundaries/do_per_player {cmp: "$(cmp)", source: "$(source)"}
$execute if score temp2 dnb_system matches 1.. run function mmt_dynaball:boundaries/do_refill {part: "$(part)"}