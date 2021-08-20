DEGREE = "\xC2\xB0"

# problem
#   take a float from 0 to 360
#   returns string of that angle in degrees, minutes, and seconds
#   use degree symnbol
#   single quote for minutes (multiply decimal by 60, whole number is min)
#   double quote for seconds (remaining decimal by 60, becomes seconds)

# examples
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# ds 
# input - float
# ouput - degree (degree symbol as constant) minutes' second"

# algo
#   def method dms to accept degree float
#     divmod float by 1 to get whole number and decimal
#     whole number is degree
#     decimal divmod 60 to get minute and decimal
#     whole number is minute
#     decimal divmod 60

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")