# Toggle tags
tag @s[tag=goldark.paths.werewoof] add goldark.temp.remove_werewoof

tag @s[tag=goldark.temp.remove_werewoof] remove goldark.paths.werewoof
tag @s[tag=!goldark.temp.remove_werewoof] add goldark.paths.werewoof

tag @s[tag=goldark.temp.remove_werewoof] remove goldark.temp.remove_werewoof


# Display audiovisual feedback
playsound entity.wolf.howl player @s[tag=goldark.paths.werewoof] ~ ~ ~ 1 0.8
playsound entity.wolf.whine player @s[tag=!goldark.paths.werewoof] ~ ~ ~ 1 0.8

particle flash ~ ~1 ~ .0 .0 .0 1 1