tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:1,Unbreakable:1b}}]}] add magicus_spellSwitch
execute as @a[tag=magicus_spellSwitch] run function magicus:tick/spellselu
tag @a[tag=magicus_spellSwitch] remove magicus_spellSwitch
