#tgttos启动
execute as @a[tag=player,x=9991,z=9991,dx=1,dz=1,y=92] run scoreboard players set @e[name="tgttos"] config 2
execute if score @e[name="tgttos",limit=1] config matches 2 run function tgttos:load
execute if score @e[name="tgttos",limit=1] config matches 10 run function tgttos:main