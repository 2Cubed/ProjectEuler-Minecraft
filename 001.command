/say Starting...  # Impulse, Unconditional
/scoreboard players set 001_counter value 0  # Chain, Unconditional
/scoreboard players set 001_total value 0  # Chain, Unconditional
/scoreboard players set 001_THREE value 3  # Chain, Unconditional
/scoreboard players set 001_FIVE value 5  # Chain, Unconditional
/scoreboard players set 001_FIFTEEN value 15  # Chain, Unconditional
/scoreboard players test 001_counter value 0 998  # Repeat, Unconditional
/scoreboard players add 001_counter value 1  # Chain
/scoreboard players operation 001_temp value = 001_counter value  # Chain, Unconditional
/scoreboard players operation 001_temp value %= 001_THREE value  # Chain, Unconditional
/scoreboard players test 001_temp value 0 0  # Chain, Unconditional
/scoreboard players operation 001_total value += 001_counter value  # Chain
/scoreboard players operation 001_temp value = 001_counter value  # Chain, Unconditional
/scoreboard players operation 001_temp value %= 001_FIVE value  # Chain, Unconditional
/scoreboard players test 001_temp value 0 0  # Chain, Unconditional
/scoreboard players operation 001_total value += 001_counter value  # Chain
/scoreboard players operation 001_temp value = 001_counter value  # Chain, Unconditional
/scoreboard players operation 001_temp value %= 001_FIFTEEN value  # Chain, Unconditional
/scoreboard players test 001_temp value 0 0  # Chain, Unconditional
/scoreboard players operation 001_total value -= 001_counter value  # Chain
/scoreboard players test 001_counter value 999 999  # Chain, Unconditional
/tellraw @a [{"text":"[Problem 001] Total: "},{"score":{"name":"001_total","objective":"value"}}]  # Chain
/scoreboard players set 001_counter value -1  # Chain
