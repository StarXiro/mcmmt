#death message
execute store result storage mcmmt:tgttos death.index int 1 run random value 1..10
function mmt_tgttos:death_check/message/choose with storage mcmmt:tgttos death
function mmt_tgttos:death_check/message/generate with storage mcmmt:tgttos death

#go back
execute as @a[tag=tgttos,x=8958,z=8936,dx=150,dz=130,y=20,dy=40] run spreadplayers 8993 9000 0 12 under 101 false @s
execute as @a[tag=tgttos,x=8958,z=8936,dx=150,dz=130,y=20,dy=40] run tp @s 9000 101 9000 -90 0