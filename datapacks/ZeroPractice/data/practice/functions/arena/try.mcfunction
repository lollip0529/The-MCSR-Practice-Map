execute store result score #arena_towers flags if entity @e[type=armor_stand,tag=tower]
execute if score #arena_wait flags matches 100.. run scoreboard players set #arena_towers flags 10
execute if score #arena_towers flags matches ..9 run scoreboard players add #arena_wait flags 1
execute if score #arena_towers flags matches ..9 run schedule function practice:arena/retry 1t
execute if score #arena_towers flags matches 10.. if score #arena_mode flags matches 0 run function practice:play_loaded
execute if score #arena_towers flags matches 10.. if score #arena_mode flags matches 1 run function practice:onecycle/play_loaded
