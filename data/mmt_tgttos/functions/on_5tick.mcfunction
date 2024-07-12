#functions
execute as @a[tag=tgttos,advancements={mmt_tgttos:use_wool=true}] run function mmt_tgttos:item/supply

#loop
schedule function mmt_tgttos:on_5tick 5t replace