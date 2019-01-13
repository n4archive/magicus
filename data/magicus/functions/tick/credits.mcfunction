scoreboard players enable @a credits
execute as @a[scores={credits=1..}] run function magicus:credits
scoreboard players set @a[scores={credits=1..}] credits 0
