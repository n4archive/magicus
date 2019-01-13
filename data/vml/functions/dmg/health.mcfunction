effect give @a[scores={get_health=1..}] regeneration 1 10 true

scoreboard players remove @a[scores={get_health=-1..}] get_health 1
effect clear @a[scores={get_health=-1}] regeneration