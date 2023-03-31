execute as @s[tag=warden] run attribute @s minecraft:generic.max_health base set 20
effect clear @s[tag=warden,tag=!uninstall]
tag @s[tag=warden] add uninstall
clear @s[tag=warden] warped_fungus_on_a_stick{CustomModelData:16041575}
tag @s[tag=warden] remove warden
team remove warden
team remove notwarden
title @s title {"text":"Uninstall Complete","color":"dark_aqua","italic":false}