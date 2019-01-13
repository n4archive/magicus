execute as @a at @s store result score @s magicus_htpx run data get entity @s Pos[0]
execute as @a at @s store result score @s magicus_htpy run data get entity @s Pos[1]
execute as @a at @s store result score @s magicus_htpz run data get entity @s Pos[2]
execute store result score @s magicus_htpx run scoreboard players operation @s magicus_htpx -= @s magicus_htbx
execute store result score @s magicus_htpy run scoreboard players operation @s magicus_htpy -= @s magicus_htby
execute store result score @s magicus_htpz run scoreboard players operation @s magicus_htpz -= @s magicus_htbz
execute as @s[scores={home=1..,magicus_htpx=100..}] at @s run tp @s ~-100 ~ ~
execute as @s[scores={home=1..,magicus_htpx=10..}] at @s run tp @s ~-10 ~ ~
execute as @s[scores={home=1..,magicus_htpx=1..}] at @s run tp @s ~-1 ~ ~
execute as @s[scores={home=1..,magicus_htpx=..-1}] at @s run tp @s ~1 ~ ~
execute as @s[scores={home=1..,magicus_htpx=..-10}] at @s run tp @s ~10 ~ ~
execute as @s[scores={home=1..,magicus_htpx=..-100}] at @s run tp @s ~100 ~ ~
execute as @s[scores={home=1..,magicus_htpy=100..}] at @s run tp @s ~ ~-100 ~
execute as @s[scores={home=1..,magicus_htpy=10..}] at @s run tp @s ~ ~-10 ~
execute as @s[scores={home=1..,magicus_htpy=1..}] at @s run tp @s ~ ~-1 ~
execute as @s[scores={home=1..,magicus_htpy=..-1}] at @s run tp @s ~ ~1 ~
execute as @s[scores={home=1..,magicus_htpy=..-10}] at @s run tp @s ~ ~10 ~
execute as @s[scores={home=1..,magicus_htpy=..-100}] at @s run tp @s ~ ~100 ~
execute as @s[scores={home=1..,magicus_htpz=100..}] at @s run tp @s ~ ~ ~-100
execute as @s[scores={home=1..,magicus_htpz=10..}] at @s run tp @s ~ ~ ~-10
execute as @s[scores={home=1..,magicus_htpz=1..}] at @s run tp @s ~ ~ ~-1
execute as @s[scores={home=1..,magicus_htpz=..-1}] at @s run tp @s ~ ~ ~1
execute as @s[scores={home=1..,magicus_htpz=..-10}] at @s run tp @s ~ ~ ~10
execute as @s[scores={home=1..,magicus_htpz=..-100}] at @s run tp @s ~ ~ ~100
execute unless entity @s[scores={home=1..,magicus_htpx=0,magicus_htpy=0,magicus_htpz=0}] at @s run function magicus:hometp/hometeleport