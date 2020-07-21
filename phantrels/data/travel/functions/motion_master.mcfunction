execute as @e[type=minecraft:area_effect_cloud,tag=ENTITY_FLAG_WAYPOINT_TARGET] at @s run function travel:waypoints/waypoint_mgr
execute as @e[type=minecraft:phantom,tag=ENTITY_FLAG_WAYPOINT_MOVEMENT] at @s run function travel:waypoints/move_point
execute as @e[name=TravelSaddle] at @s run function travel:kill_saddle
execute as @e[name=Ride_Spawnpoint] at @s run function travel:start_ride
execute as @a at @s run function travel:stations/check_route