summon item ~ ~ ~ {Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Sonic Boom","color":"aqua","italic":false}',Lore:['{"text":"The Power Of The Warden","color":"white","italic":false}']},CustomModelData:16041575,warden:1b}}}
tag @s add warden
tag @s add aquire_warden
tag @s remove uninstall
team add warden
team add notwarden
team add notwardenmobs
team join notwarden @e[tag=!warden]
team join warden @p[scores={warden_trigger=1..}]
team modify notwarden color aqua
team modify notwardenmobs color aqua