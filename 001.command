/say Starting...  # Impulse

/scoreboard players set 001_counter value 0
/scoreboard players set 001_total value 0
/scoreboard players set 001_THREE value 3
/scoreboard players set 001_FIVE value 5
/scoreboard players set 001_FIFTEEN value 15

/blockdata ~1 ~ ~ {auto:1b}
/scoreboard players test 001_counter value 0 998  # Repeat
/scoreboard players add 001_counter value 1  # Conditional

/scoreboard players operation 001_temp value = 001_counter value
/scoreboard players operation 001_temp value %= 001_THREE value
/scoreboard players test 001_temp value 0 0
/scoreboard players operation 001_total value += 001_counter value  # Conditional

/scoreboard players operation 001_temp value = 001_counter value
/scoreboard players operation 001_temp value %= 001_FIVE value
/scoreboard players test 001_temp value 0 0
/scoreboard players operation 001_total value += 001_counter value  # Conditional

/scoreboard players operation 001_temp value = 001_counter value
/scoreboard players operation 001_temp value %= 001_FIFTEEN value
/scoreboard players test 001_temp value 0 0
/scoreboard players operation 001_total value -= 001_counter value  # Conditional

/scoreboard players test 001_counter value 999 999
/tellraw @a [{"text":"[Problem 001] Total: "},{"score":{"name":"001_total","objective":"value"}}]  # Conditional
/scoreboard players set 001_counter value -1  # Conditional
/blockdata ~-17 ~ ~ {auto:0b}  # Conditional
