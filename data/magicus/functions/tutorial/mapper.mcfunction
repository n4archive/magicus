tellraw @s "=================[Magicus Tutorial]===================="
execute as @s[scores={tutorial=1}] run function magicus:tutorial/main
execute as @s[scores={tutorial=2}] run function magicus:tutorial/items/main
execute as @s[scores={tutorial=3}] run function magicus:tutorial/items/staff
execute as @s[scores={tutorial=4}] run function magicus:tutorial/items/spell
execute as @s[scores={tutorial=5}] run function magicus:tutorial/items/magicbackpack
execute as @s[scores={tutorial=6}] run function magicus:tutorial/witchcauld
tellraw @s "===================================================="
