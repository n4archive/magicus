#3. Zahl anpassen für mehr oder weniger Genauigkeit! :)
#5. Zahl anpassen damit das projektil (anti-) schwerkraft hat!
tp @s ^ ^ ^0.25 ~ ~0.5

execute if block ~ ~ ~ gold_block run kill @s

execute if entity @e[tag=!ray,distance=..1] run effect give @e[tag=!ray,distance=..1] levitation 10 1
execute if entity @e[tag=!ray,distance=..1] run kill @s

execute positioned ^ ^-1 ^ if entity @e[tag=!ray,distance=..1] run summon minecraft:cow ~ ~2 ~ {NoGravity:1b}
execute positioned ^ ^-1 ^ if entity @e[tag=!ray,distance=..1] run kill @s

particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force

scoreboard players remove @s rayspeed 1
execute as @s[scores={rayspeed=1..}] at @s run function magicus:staff/p/r3
