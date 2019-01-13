# Konfigurationsdatei zum Reparieren
# diamond_sword 10 1s
execute as @s[nbt={Item:{tag:{repairItems:1s}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}},distance=..0.5] run tag @s add repairing
execute as @s[nbt={Item:{tag:{repairItems:1s}}}] unless entity @e[tag=offer,distance=..0.5] run tag @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}},distance=..0.5] add offer
execute as @s[nbt={Item:{tag:{repairItems:1s}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}},distance=..0.5,tag=offer] run scoreboard players set @s repairUses 10

