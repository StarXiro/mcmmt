#tgttos启动
execute as @a[tag=player,x=9990,z=9990,dx=2,dz=2,y=92] run scoreboard players set @e[name="tgttos"] config 2
execute if score @e[name="tgttos",limit=1] config matches 2 run function tgttos:load
execute if score @e[name="tgttos",limit=1] config matches 10 run function tgttos:main

#BattleBox启动
execute as @a[tag=player,x=9999,z=9987,dx=2,dz=2,y=92] run scoreboard players set @e[name="Battle Box"] config 2
execute if score @e[name="Battle Box",limit=1] config matches 2 run function battlebox:load
execute if score @e[name="Battle Box",limit=1] config matches 10 run function battlebox:main