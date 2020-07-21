execute as @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT] at @s if score @s moving matches -40 run kill @s

execute as @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT] at @s if score @s moving matches 1 run teleport @s ^ ^ ^0.1
execute as @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT] at @s if score @s moving matches 2 run teleport @s ^ ^ ^0.2
execute as @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT] at @s if score @s moving matches 3 run teleport @s ^ ^ ^0.3
execute as @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT] at @s if score @s moving matches 4 run teleport @s ^ ^ ^0.4
execute as @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT] at @s if score @s moving matches 5 run teleport @s ^ ^ ^0.5
execute as @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT] at @s if score @s moving matches 10 run teleport @s ^ ^ ^1

execute as @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT] at @s if score @s moving matches 9001 run teleport @s ^ ^ ^5


execute as @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT] at @s run data merge entity @s {Fire:0s}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=ENTITY_FLAG_WAYPOINT_TARGET,distance=0..2.000] run tag @s remove _e.updated_wp_poi
execute if entity @s[tag=_e.get_waypoint_id] run function travel:waypoints/get_waypoint_target