execute as @a[scores={magicus_jut=1..}] run tellraw @s [{"text":"Magicus 0.1 installiert!","color":"green"}]
execute as @a[scores={magicus_jut=1..}] run tellraw @s [{"text":"/trigger tutorial","color":"yellow"}]
execute as @a[scores={magicus_jut=1..}] run tellraw @s [{"text":"Willkommen zurück!"}]
execute as @a[scores={magicus_jut=1..}] run scoreboard players set @s magicus_jut 0
