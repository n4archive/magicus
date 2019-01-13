execute as @a run scoreboard players set @s manaMax 1000
#execute as @a[gamemode=creative] run scoreboard players set @s manaCount 1000
execute as @a[scores={manaCount=..999}] run scoreboard players add @s manaCount 1
