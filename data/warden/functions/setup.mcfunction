scoreboard objectives add click_warden minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add warden_trigger trigger
scoreboard objectives add warden_uninstall trigger
scoreboard objectives add warden_death deathCount
scoreboard players set @a warden_death 0
team add notwarden
tellraw @a {"text":"The Warden has Rised","color":"aqua","italic":false}