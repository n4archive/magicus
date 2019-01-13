# Home Teleport
scoreboard players enable @a home
scoreboard players enable @a set_home
execute as @a[scores={home=1..}] run function magicus:hometp/sgamemode
gamemode spectator @a[scores={home=1..},gamemode=!spectator]
execute as @a[scores={home=1..}] run function magicus:hometp/hometeleport
execute as @a[scores={home=1..,magicus_htpx=0,magicus_htpy=0,magicus_htpz=0}] run function magicus:hometp/gamemode
scoreboard players reset @a[scores={home=1..,magicus_htpy=0,magicus_htpz=0}] home
execute as @a[scores={set_home=1..}] at @s store result score @s magicus_htbx run data get entity @s Pos[0]
execute as @a[scores={set_home=1..}] at @s store result score @s magicus_htby run data get entity @s Pos[1]
execute as @a[scores={set_home=1..}] at @s store result score @s magicus_htbz run data get entity @s Pos[2]
scoreboard players reset @a[scores={set_home=1..}] set_home
