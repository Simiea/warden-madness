effect give @a[tag=!warden,predicate=warden:fire] glowing 4 1 true
execute at @a[tag=warden,distance=..16] run particle minecraft:sculk_charge_pop ^ ^2 ^1 0.2 0.2 0.2 0 1 force
title @a[tag=warden,distance=..16] actionbar {"text":"You Hear A Player","color":"dark_aqua","italic":false}