#spawn_function
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Waypoint_Travel\"}",Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomNameVisible:1b,Tags:["ENTITY_FLAG_WORLD_IGNORE","ENTITY_FLAG_WAYPOINT_TARGET"]}
#path_id is unique to every path
#waypoint is a separate point in a single path
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=ENTITY_FLAG_WAYPOINT_TARGET,distance=0..0.001,limit=1] path_id = @s path_id 
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=ENTITY_FLAG_WAYPOINT_TARGET,distance=0..0.001,limit=1] waypoint_id = @s waypoint_id
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=ENTITY_FLAG_WAYPOINT_TARGET,distance=0..0.001,limit=1] moving 10
scoreboard players add @s waypoint_id 1