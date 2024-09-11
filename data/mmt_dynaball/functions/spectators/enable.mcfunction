
# build storage
data modify storage mcmmt:dynaball spec_teleport set value []
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball games
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:spectators/build_tp"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

function mmt_dynaball:spectators/perform_set_display with storage mcmmt:dynaball macro_bag.spec_display
scoreboard players set @a[tag=dnb_spec] dnb_spec_tp_trigger -1
scoreboard players enable @a[tag=dnb_spec] dnb_spec_tp_trigger
gamemode spectator @a[tag=dnb_spec]

execute as @a[tag=dnb_spec] run function mmt_dynaball:messages/spectators

function mmt_dynaball:spectators/frame
function mmt_dynaball:spectators/trigger_safe