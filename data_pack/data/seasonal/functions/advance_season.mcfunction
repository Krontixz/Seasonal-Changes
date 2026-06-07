scoreboard players set global season_ticks 0
scoreboard players add global current_season 1
execute if score global current_season matches 5.. run scoreboard players set global current_season 1
execute if score global current_season matches 1 run function seasonal:spring
execute if score global current_season matches 2 run function seasonal:summer
execute if score global current_season matches 3 run function seasonal:autumn
execute if score global current_season matches 4 run function seasonal:winter
