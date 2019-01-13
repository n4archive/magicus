execute as @a[tag=!magicus_msg] run tellraw @s [{"text":"Magicus 0.0.1 installiert!","color":"green"}]
execute as @a[tag=!magicus_msg] run tellraw @s ["",{"text":"Willkommen im Spiel, "},{"selector":"@s"},{"text":"!"}]
execute as @a[tag=!magicus_msg] run tellraw @s [{"text":"/trigger tutorial","color":"yellow"}]
tag @a[tag=!magicus_msg] add magicus_msg
