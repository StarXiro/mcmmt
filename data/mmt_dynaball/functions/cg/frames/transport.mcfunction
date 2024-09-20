$tp @a[tag=$(tag), tag=dnb_player] $(pos)
$summon minecraft:block_display $(pos) {Tags:["$(camera)", "dnb_camera"], teleport_duration: 12}
$execute as @e[tag=$(camera)] at @s run tp @s ~ ~ ~ $(face)