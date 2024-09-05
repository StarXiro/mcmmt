scoreboard players operation temp2 dnb_system = @s dnb_dmg_source
execute store result storage mcmmt:dynaball macro_bag.message.index int 1.0 run scoreboard players get @s core_pid
execute as @a[tag=dnb_player] if score @s core_pid = temp2 dnb_system run function mmt_dynaball:messages/source_death/notify with storage mcmmt:dynaball macro_bag.message
execute store result storage mcmmt:dynaball macro_bag.message.index int 1.0 run scoreboard players get temp2 dnb_system
function mmt_dynaball:messages/source_death/make
function mmt_dynaball:messages/source_death/macro with storage mcmmt:dynaball macro_bag.message