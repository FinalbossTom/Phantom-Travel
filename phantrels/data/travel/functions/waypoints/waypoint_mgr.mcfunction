scoreboard players add @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT,tag=!_e.updated_wp_poi,distance=..1] waypoint_id 1
tag @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT,tag=!_e.updated_wp_poi,distance=..1] add _e.get_waypoint_id
tag @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT,tag=!_e.updated_wp_poi,distance=..1] add _e.updated_wp_poi

execute at @s if score @s moving matches 1.. run scoreboard players operation @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT,distance=..2] moving = @s moving
execute at @s if score @s moving matches ..0 run scoreboard players remove @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT,distance=..2] moving 1