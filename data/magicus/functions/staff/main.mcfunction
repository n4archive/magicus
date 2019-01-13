execute as @a[tag=vf_coas,nbt={SelectedItem:{tag:{Damage:1,Unbreakable:1b}}},tag=magicus_spell_kill,scores={manaCount=500..}] at @s run tag @s add r1t
execute as @a[tag=vf_coas,nbt={SelectedItem:{tag:{Damage:1,Unbreakable:1b}}},tag=magicus_spell_boom,scores={manaCount=250..}] at @s run tag @s add r2t
execute as @a[tag=vf_coas,nbt={SelectedItem:{tag:{Damage:1,Unbreakable:1b}}},tag=magicus_spell_cow,scores={manaCount=100..}] at @s run tag @s add r3t

execute as @a[tag=r1t] at @s run tag @s add rayu
execute as @a[tag=r2t] at @s run tag @s add rayu
execute as @a[tag=r3t] at @s run tag @s add rayu

execute as @a[tag=r1t] run scoreboard players remove @s manaCount 500
execute as @a[tag=r2t] run scoreboard players remove @s manaCount 250
execute as @a[tag=r3t] run scoreboard players remove @s manaCount 100

#duration erhören damit das projektil länger fliegt
execute as @a[tag=r1t] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ray","r1"],Duration:5}
execute as @a[tag=r2t] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ray","r2"],Duration:500}
execute as @a[tag=r3t] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ray","r3"],Duration:500}
execute as @a[tag=rayu] at @s run tp @e[type=area_effect_cloud,tag=!setup] @s
execute as @a[tag=rayu] at @s run tp @e[type=area_effect_cloud,tag=!setup] ^ ^1.2 ^1
tag @e[type=area_effect_cloud,tag=!setup,tag=ray] add setup

tag @a[tag=r1t] remove r1t
tag @a[tag=r2t] remove r2t
tag @a[tag=r3t] remove r3t

#einfach den wert erhören, damit das projektil schneller fliegt ohne genauigkeit zu verlieren!
scoreboard players set @e[tag=ray,tag=r1] rayspeed 20
scoreboard players set @e[tag=ray,tag=r2] rayspeed 2000
scoreboard players set @e[tag=ray,tag=r3] rayspeed 20

execute as @e[tag=ray,tag=r1] at @s run function magicus:staff/p/r1
execute as @e[tag=ray,tag=r2] at @s run function magicus:staff/p/r2
execute as @e[tag=ray,tag=r3] at @s run function magicus:staff/p/r3

tag @a[tag=rayu] remove rayu
