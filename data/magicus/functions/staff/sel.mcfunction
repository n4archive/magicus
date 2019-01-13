tag @s add magicus_selUnq
tag @s[tag=!magicus_spell_cow,tag=!magicus_spell_boom,tag=!magicus_spell_home,tag=!magicus_spell_kill] add magicus_spell_cow

execute as @s[tag=magicus_selUnq,tag=magicus_spell_cow] run tag @s add magicus_cowToKill
execute as @s[tag=magicus_cowToKill] run tag @s remove magicus_spell_cow
execute as @s[tag=magicus_cowToKill] run tag @s add magicus_spell_kill
execute as @s[tag=magicus_cowToKill,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b,HasSpellKILL:1b}}]}] run tellraw @s "Ausgewählter Zauber: KILL"
execute as @s[tag=magicus_cowToKill,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b,HasSpellKILL:1b}}]}] run tag @s remove magicus_selUnq

execute as @s[tag=magicus_selUnq,tag=magicus_spell_kill] run tag @s add magicus_killToBoom
execute as @s[tag=magicus_killToBoom] run tag @s remove magicus_spell_kill
execute as @s[tag=magicus_killToBoom] run tag @s add magicus_spell_boom
execute as @s[tag=magicus_killToBoom,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b,HasSpellBOOM:1b}}]}] run tellraw @s "Ausgewählter Zauber: BOOM"
execute as @s[tag=magicus_killToBoom,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b,HasSpellBOOM:1b}}]}] run tag @s remove magicus_selUnq

execute as @s[tag=magicus_selUnq,tag=magicus_spell_boom] run tag @s add magicus_boomToHome
execute as @s[tag=magicus_boomToHome] run tag @s remove magicus_spell_boom
execute as @s[tag=magicus_boomToHome] run tag @s add magicus_spell_home
execute as @s[tag=magicus_boomToHome,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b,HasSpellHOME:1b}}]}] run tellraw @s "Ausgewählter Zauber: HOME"
execute as @s[tag=magicus_boomToHome,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b,HasSpellHOME:1b}}]}] run tag @s remove magicus_selUnq

execute as @s[tag=magicus_selUnq,tag=magicus_spell_home] run tag @s add magicus_homeToCow
execute as @s[tag=magicus_homeToCow] run tag @s remove magicus_spell_home
execute as @s[tag=magicus_homeToCow] run tag @s add magicus_spell_cow
execute as @s[tag=magicus_homeToCow,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b,HasSpellCOW:1b}}]}] run tellraw @s "Ausgewählter Zauber: COW"
execute as @s[tag=magicus_homeToCow,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b,HasSpellCOW:1b}}]}] run tag @s remove magicus_selUnq


execute as @s[tag=magicus_selUnq] run tag @s remove magicus_spell_cow
execute as @s[tag=magicus_selUnq] run tellraw @s "Kein Zauber ausgewählt!"
execute as @s[tag=magicus_selUnq] run tag @s remove magicus_selUnq

tag @a[tag=magicus_boomToHome] remove magicus_boomToHome
tag @a[tag=magicus_homeToCow] remove magicus_homeToCow
tag @a[tag=magicus_cowToKill] remove magicus_cowToKill
tag @a[tag=magicus_killToBoom] remove magicus_killToBoom
