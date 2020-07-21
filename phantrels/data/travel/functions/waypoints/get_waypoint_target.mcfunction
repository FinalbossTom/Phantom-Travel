scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=ENTITY_FLAG_WAYPOINT_TARGET] waypoint_id -= @s waypoint_id
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=ENTITY_FLAG_WAYPOINT_TARGET,scores={waypoint_id=0}] path_id -= @s path_id
teleport @s ^ ^ ^0.1 facing entity @e[type=minecraft:area_effect_cloud,tag=ENTITY_FLAG_WAYPOINT_TARGET,scores={path_id=0,waypoint_id=0},limit=1]

scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=ENTITY_FLAG_WAYPOINT_TARGET,scores={waypoint_id=0}] path_id += @s path_id
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=ENTITY_FLAG_WAYPOINT_TARGET] waypoint_id += @s waypoint_id

tag @s remove _e.get_waypoint_id