scoreboard players enable @a tutorial
execute as @a[scores={tutorial=1..}] run function magicus:tutorial/mapper
scoreboard players set @a[scores={tutorial=1..}] tutorial 0
