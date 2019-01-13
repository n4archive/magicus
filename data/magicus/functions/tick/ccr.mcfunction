
execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id:"minecraft:glowstone_dust",Count:7b}}] at @s if block ~ ~ ~ cauldron if block ~ ~-1 ~ diamond_block run tag @s add magicus_drop_glowstone
execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id:"minecraft:stick",Count:2b}}] at @s if block ~ ~ ~ cauldron if block ~ ~-1 ~ diamond_block run tag @s add magicus_drop_stick
execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id:"minecraft:leather",Count:20b}}] at @s if block ~ ~ ~ cauldron if block ~ ~-1 ~ diamond_block run tag @s add magicus_drop_leather

execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:3,Unbreakable:1b}}}] at @s if block ~ ~ ~ cauldron if block ~ ~-1 ~ diamond_block run tag @s add magicus_drop_magicBackpack
execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:5,Unbreakable:1b}}}] at @s if block ~ ~ ~ cauldron if block ~ ~-1 ~ diamond_block run tag @s add magicus_drop_spellBoom
execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:4,Unbreakable:1b}}}] at @s if block ~ ~ ~ cauldron if block ~ ~-1 ~ diamond_block run tag @s add magicus_drop_spellCow
execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:2,Unbreakable:1b}}}] at @s if block ~ ~ ~ cauldron if block ~ ~-1 ~ diamond_block run tag @s add magicus_drop_spellKill

execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id:"minecraft:diamond_sword",Count:1b}}] at @s if block ~ ~ ~ cauldron if block ~ ~-1 ~ diamond_block run tag @s add magicus_drop_diamondSword
execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] at @s if block ~ ~ ~ cauldron if block ~ ~-1 ~ diamond_block run tag @s add magicus_drop_netherStar
execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id:"minecraft:blaze_powder",Count:64b}}] at @s if block ~ ~ ~ cauldron if block ~ ~-1 ~ diamond_block run tag @s add magicus_drop_blazePowder
execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id:"minecraft:tnt",Count:64b}}] at @s if block ~ ~ ~ cauldron if block ~ ~-1 ~ diamond_block run tag @s add magicus_drop_tnt
execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id:"minecraft:shulker_shell",Count:1b}}] at @s if block ~ ~ ~ cauldron if block ~ ~-1 ~ diamond_block run tag @s add magicus_drop_shulkerBox

execute as @e[tag=magicus_drop_glowstone] at @s if entity @e[distance=..1,tag=magicus_drop_stick] run tag @s add magicus_craft_noobStaff
execute as @e[tag=magicus_drop_glowstone] at @s if entity @e[distance=..1,tag=magicus_drop_shulkerBox] run tag @s add magicus_craft_spellCow
execute as @e[tag=magicus_drop_glowstone] at @s if entity @e[distance=..1,tag=magicus_drop_diamondSword] if entity @e[distance=..1,tag=magicus_drop_netherStar] run tag @s add magicus_craft_spellKill
execute as @e[tag=magicus_drop_glowstone] at @s if entity @e[distance=..1,tag=magicus_drop_tnt] if entity @e[distance=..1,tag=magicus_drop_blazePowder] run tag @s add magicus_craft_spellBoom
execute as @e[tag=magicus_drop_magicBackpack] at @s if entity @e[distance=..1,tag=magicus_drop_spellBoom] run tag @s add magicus_craft_backPackBoom
execute as @e[tag=magicus_drop_magicBackpack] at @s if entity @e[distance=..1,tag=magicus_drop_spellCow] run tag @s add magicus_craft_backPackCow
execute as @e[tag=magicus_drop_magicBackpack] at @s if entity @e[distance=..1,tag=magicus_drop_spellKill] run tag @s add magicus_craft_backPackKill
execute as @e[tag=magicus_drop_leather] at @s if entity @e[distance=..1,tag=magicus_drop_stick] run tag @s add magicus_craft_backPack

execute as @e[type=item,tag=magicus_craft_noobStaff] at @s run kill @e[limit=1,distance=..1,tag=magicus_drop_stick]
execute as @e[type=item,tag=magicus_craft_noobStaff] at @s run data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Stab\",\"italic\":\"false\"}"},Unbreakable:1b,Damage:1}},Motion:[0.0d,0.3d,0.0d]}
execute as @e[type=item,tag=magicus_craft_noobStaff] at @s run playsound minecraft:block.beacon.activate master @a[distance=..20]

execute as @e[type=item,tag=magicus_craft_backPackBoom] at @s run kill @e[limit=1,distance=..1,tag=magicus_drop_spellBoom]
execute as @e[type=item,tag=magicus_craft_backPackBoom] at @s run data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Zauberkugelbeutel\",\"italic\":\"false\"}",Lore:["Rechtsklick um zu sehen, was für Zauber drin sind..."]},Unbreakable:1b,Damage:3,HasSpellBOOM:1b}},Motion:[0.0d,0.3d,0.0d]}
execute as @e[type=item,tag=magicus_craft_backPackBoom] at @s run playsound minecraft:block.beacon.activate master @a[distance=..20]

execute as @e[type=item,tag=magicus_craft_backPack] at @s run kill @e[limit=1,distance=..1,tag=magicus_drop_stick]
execute as @e[type=item,tag=magicus_craft_backPack] at @s run data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Zauberkugelbeutel\",\"italic\":\"false\"}",Lore:["Rechtsklick um zu sehen, was für Zauber drin sind..."]},Unbreakable:1b,Damage:3,HasSpellHOME:1b}},Motion:[0.0d,0.3d,0.0d]}
execute as @e[type=item,tag=magicus_craft_backPack] at @s run playsound minecraft:block.beacon.activate master @a[distance=..20]

execute as @e[type=item,tag=magicus_craft_backPackCow] at @s run kill @e[limit=1,distance=..1,tag=magicus_drop_spellCow]
execute as @e[type=item,tag=magicus_craft_backPackCow] at @s run data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Zauberkugelbeutel\",\"italic\":\"false\"}",Lore:["Rechtsklick um zu sehen, was für Zauber drin sind..."]},Unbreakable:1b,Damage:3,HasSpellCOW:1b}},Motion:[0.0d,0.3d,0.0d]}
execute as @e[type=item,tag=magicus_craft_backPackCow] at @s run playsound minecraft:block.beacon.activate master @a[distance=..20]

execute as @e[type=item,tag=magicus_craft_backPackKill] at @s run kill @e[limit=1,distance=..1,tag=magicus_drop_spellKill]
execute as @e[type=item,tag=magicus_craft_backPackKill] at @s run data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Zauberkugelbeutel\",\"italic\":\"false\"}",Lore:["Rechtsklick um zu sehen, was für Zauber drin sind..."]},Unbreakable:1b,Damage:3,HasSpellKILL:1b}},Motion:[0.0d,0.3d,0.0d]}
execute as @e[type=item,tag=magicus_craft_backPackKill] at @s run playsound minecraft:block.beacon.activate master @a[distance=..20]

execute as @e[type=item,tag=magicus_craft_spellKill] at @s run kill @e[limit=1,distance=..1,tag=magicus_drop_netherStar]
execute as @e[type=item,tag=magicus_craft_spellKill] at @s run kill @e[limit=1,distance=..1,tag=magicus_drop_diamondSword]
execute as @e[type=item,tag=magicus_craft_spellKill] at @s run data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Zauberkugel des Todes\",\"italic\":\"false\"}"},Unbreakable:1b,Damage:2}},Motion:[0.0d,0.3d,0.0d]}
execute as @e[type=item,tag=magicus_craft_spellKill] at @s run playsound minecraft:block.beacon.activate master @a[distance=..20]

execute as @e[type=item,tag=magicus_craft_spellBoom] at @s run kill @e[limit=1,distance=..1,tag=magicus_drop_tnt]
execute as @e[type=item,tag=magicus_craft_spellBoom] at @s run kill @e[limit=1,distance=..1,tag=magicus_drop_blazePowder]
execute as @e[type=item,tag=magicus_craft_spellBoom] at @s run data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Zauberkugel des TNTs\",\"italic\":\"false\"}"},Unbreakable:1b,Damage:5}},Motion:[0.0d,0.3d,0.0d]}
execute as @e[type=item,tag=magicus_craft_spellBoom] at @s run playsound minecraft:block.beacon.activate master @a[distance=..20]

execute as @e[type=item,tag=magicus_craft_spellCow] at @s run kill @e[limit=1,distance=..1,tag=magicus_drop_shulkerBox]
execute as @e[type=item,tag=magicus_craft_spellCow] at @s run data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Zauberkugel der fliegenden Muhkraft\",\"italic\":\"false\"}"},Unbreakable:1b,Damage:4}},Motion:[0.0d,0.3d,0.0d]}
execute as @e[type=item,tag=magicus_craft_spellCow] at @s run playsound minecraft:block.beacon.activate master @a[distance=..20]

tag @e[type=item,tag=magicus_craft_noobStaff] remove magicus_craft_noobStaff
tag @e[type=item,tag=magicus_craft_backPack] remove magicus_craft_backPack
tag @e[type=item,tag=magicus_craft_spellKill] remove magicus_craft_spellKill
tag @e[type=item,tag=magicus_craft_spellBoom] remove magicus_craft_spellBoom
tag @e[type=item,tag=magicus_craft_spellCow] remove magicus_craft_spellCow
tag @e[type=item,tag=magicus_craft_backPackBoom] remove magicus_craft_backPackBoom
tag @e[type=item,tag=magicus_craft_backPackCow] remove magicus_craft_backPackCow
tag @e[type=item,tag=magicus_craft_backPackKill] remove magicus_craft_backPackKill
