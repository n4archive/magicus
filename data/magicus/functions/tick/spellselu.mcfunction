execute as @s[nbt=!{SelectedItem:{}}] run tag @s add magicus_tmp
execute as @s[tag=magicus_tmp] run replaceitem entity @s weapon.mainhand carrot_on_a_stick{Damage:1,display:{Name:"{\"text\":\"Stab\",\"italic\":\"false\"}"},Unbreakable:1b}
execute as @s[tag=magicus_tmp] run replaceitem entity @s weapon.offhand air
execute as @s[tag=magicus_tmp] run function magicus:staff/sel
tag @s[tag=magicus_tmp] remove magicus_tmp
