/say Starting...  # Impulse

/scoreboard players set 002_fibOld value 0
/scoreboard players set 002_fibLast value 1
/scoreboard players set 002_fibCurrent value 0
/scoreboard players set 002_total value 0
/scoreboard players set 002_TWO value 2

/blockdata ~1 ~ ~ {auto:1b}
/scoreboard players test 002_fibCurrent value 0 4000000  # Repeat
/scoreboard players operation 002_fibCurrent value = 002_fibOld value  # Conditional
/scoreboard players operation 002_fibCurrent value += 002_fibLast value  # Conditional
/scoreboard players operation 002_fibOld value = 002_fibLast value  # Conditional
/scoreboard players operation 002_fibLast value = 002_fibCurrent value  # Conditional

/scoreboard players operation 002_tmp value = 002_fibCurrent value  # Conditional
/scoreboard players operation 002_tmp value %= 002_TWO value  # Conditional
/scoreboard players test 002_tmp value 0 0  # Conditional
/scoreboard players test 002_fibCurrent value 0 4000000  # Conditional
/scoreboard players operation 002_total value += 002_fibCurrent value  # Conditional

/scoreboard players test 002_fibCurrent value 4000001 16777216
/tellraw @a [{"text":"[Problem 002] Total: "},{"score":{"name":"002_total","objective":"value"}}]  # Conditional
/scoreboard players set 002_fibCurrent value -1  # Conditional
/blockdata ~-13 ~ ~ {auto:0b}  # Conditional
