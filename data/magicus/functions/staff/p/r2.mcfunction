#3. Zahl anpassen für mehr oder weniger Genauigkeit! :)
#5. Zahl anpassen damit das projektil (anti-) schwerkraft hat!
tp @s ^ ^ ^0.5 ~ ~


#Block-Hit-Event
execute unless block ~ ~ ~ #vml:nonsolid run tag @s add buhm
execute as @s[tag=buhm] run setblock ~ ~ ~ minecraft:air
execute as @s[tag=buhm] run summon minecraft:tnt ~ ~ ~
execute as @s[tag=buhm] run kill @s

particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force

scoreboard players remove @s rayspeed 1
execute as @s[scores={rayspeed=1..}] at @s run function magicus:staff/ray
