
execute as @e[type=minecraft:snowball,limit=1,nbt={Item:{tag:{CustomModelData:1}}}] run function mmt_core:utils/timer/private/snowball_start

execute as @e[type=minecraft:snowball,limit=1,nbt={Item:{tag:{CustomModelData:2}}}] run function mmt_core:utils/timer/private/snowball_stop

execute as @e[type=minecraft:snowball,limit=1,nbt={Item:{tag:{CustomModelData:3}}}] run function mmt_core:utils/timer/private/snowball_stamp