tag @a[tag=vf_coas,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b}}}] add rcb
tellraw @a[tag=rcb] {"text":"Der Zauberbeutel enthält:"}
tellraw @a[tag=rcb,nbt={SelectedItem:{tag:{HasSpellKILL:1b}}}] {"text":"KILL"}
tellraw @a[tag=rcb,nbt={SelectedItem:{tag:{HasSpellHOME:1b}}}] {"text":"HOME"}
tellraw @a[tag=rcb,nbt={SelectedItem:{tag:{HasSpellBOOM:1b}}}] {"text":"BOOM"}
tellraw @a[tag=rcb,nbt={SelectedItem:{tag:{HasSpellCOW:1b}}}] {"text":"COW"}
tag @a[tag=rcb] remove rcb
