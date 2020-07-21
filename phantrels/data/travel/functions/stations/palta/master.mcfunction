execute if entity @s[nbt={Inventory:[{tag:{PaltaTravel:1b,PaltaToTest:1b}}]}] as @e[name=Ride_Spawnpoint,limit=1,sort=nearest,distance=..20] run function travel:stations/palta/routes/to_test


execute if entity @s[nbt={Inventory:[{tag:{PaltaTravel:1b}}]}] at @s run clear @s minecraft:arrow{PaltaTravel:1b}
