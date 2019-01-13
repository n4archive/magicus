#3. Zahl anpassen für mehr oder weniger Genauigkeit! :)
#5. Zahl anpassen damit das projektil (anti-) schwerkraft hat!
tp @s ^ ^ ^0.25 ~ ~


#Block-Hit-Event
execute if block ~ ~ ~ gold_block run playsound block.note_block.chime master @a ~ ~ ~ 1 1 1
execute if block ~ ~ ~ gold_block run kill @s

#Entity-Hit-Event
execute if entity @e[tag=!ray,distance=..1] run say Fuß getroffen!
execute if entity @e[tag=!ray,distance=..1] run kill @e[tag=!ray,distance=..1]
execute if entity @e[tag=!ray,distance=..1] run kill @s

execute positioned ^ ^-1 ^ if entity @e[tag=!ray,distance=..1] run say Kopf getroffen!
execute positioned ^ ^-1 ^ if entity @e[tag=!ray,distance=..1] run kill @e[tag=!ray,distance=..1]
execute positioned ^ ^-1 ^ if entity @e[tag=!ray,distance=..1] run kill @s

particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force

scoreboard players remove @s rayspeed 1
execute as @s[scores={rayspeed=1..}] at @s run function magicus:staff/ray
