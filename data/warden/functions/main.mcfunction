#Death
gamerule showDeathMessages true

#General
execute as @a[scores={click_warden=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{warden:1b}}}] run function warden:sonic_boom_shoot
execute as @a[scores={warden_trigger=1..}] at @s run function warden:item
execute as @a[scores={warden_uninstall=1..}] at @s run function warden:uninstall
team join notwarden @a[tag=!warden]
team join notwardenmobs @e[tag=!warden,type=!player]
team join warden @e[type=warden]

#Stats
effect give @a[tag=warden] minecraft:strength 10 5 true
effect give @a[tag=warden] minecraft:speed 10 3 true
effect give @a[tag=warden] minecraft:resistance 10 3 true
execute as @a[tag=warden] run attribute @s minecraft:generic.max_health base set 500
effect give @a[tag=warden] minecraft:blindness 10 1 true
effect give @a[tag=warden] minecraft:fire_resistance 10 1 true
effect give @a[tag=warden] minecraft:water_breathing 10 1 true

#Hearing
execute at @a[tag=warden] run execute at @a[tag=!warden,distance=..16,predicate=warden:sprint] unless block ~ ~-1 ~ #wool run function warden:hear/hear_player_sprint
execute at @a[tag=warden] run execute at @a[tag=!warden,distance=..16,predicate=warden:fire] unless block ~ ~-1 ~ #wool run function warden:hear/hear_player_fire
execute at @a[tag=warden] run execute at @a[tag=!warden,distance=..16,predicate=warden:swimming] unless block ~ ~-1 ~ #wool run function warden:hear/hear_player_swim
execute at @a[tag=warden] run execute at @a[tag=!warden,distance=..16] run effect give @p[tag=!warden] darkness 20 0 true

#MobHearing
execute at @a[tag=warden] run execute as @e[type=!warden,type=!player,tag=!warden,distance=..16] unless block ~ ~-1 ~ #wool run effect give @s glowing 4 1 true
execute at @a[tag=warden] run execute as @e[type=!warden,type=!player,tag=!warden,distance=..16] unless block ~ ~-1 ~ #wool run effect give @s glowing 4 1 true
execute at @a[tag=warden] run execute as @e[type=!warden,type=!player,tag=!warden,distance=..16] unless block ~ ~-1 ~ #wool run effect give @s glowing 4 1 true

#Resets
scoreboard players set @a click_warden 0
scoreboard players set @a walk_warden 0
scoreboard players set @a warden_trigger 0
scoreboard players set @a warden_uninstall 0
scoreboard players enable @a warden_trigger
scoreboard players enable @a warden_uninstall
tag @a remove aquire_warden