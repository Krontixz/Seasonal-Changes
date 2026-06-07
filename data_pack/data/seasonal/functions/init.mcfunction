scoreboard objectives add season_ticks dummy
scoreboard objectives add current_season dummy
execute idly unless score global current_season matches 1..4 run scoreboard players set global current_season 1
