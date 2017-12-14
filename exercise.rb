# 01 - Reinforcement Exercises: Programming Fundamentals
### Thursday, Dec 14th

##Exercises
# Create the following array in Ruby:
trains =
[
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]
# 1. Save the direction of train 111 into a variable.
direction_first = trains[7][:direction]
# 2. Save the frequency of train 80B into a variable.
frequency_first = trains[5][:frequency_in_minutes]
# 3. Save the direction of train 610 into a variable.
direction_second = trains[2][:direction]
# 4. Create an empty array. Iterate through each train and add the name of the train into the array if it travels north.
northbound_trains = []
trains.each {|train|
  if train[:direction] == "north"
    northbound_trains << train
  end
}
# 5. Do the same thing for trains that travel east.
eastbound_trains = []
trains.each {|train|
  if train[:direction] == "east"
    eastbound_trains << train
  end
}
# 6. You probably just ended up rewriting some of the same code. Move this repeated code into a method that accepts a direction and a list of trains as arguments, and returns a list of just the trains that go in that direction. Call this method once for north and once for east in order to DRY up your code.
def trains_in_direction(trains, direction)
  correct_trains = []
  trains.each { |train|
    if train[:direction] == direction
      correct_trains << train
    end
  }
  return correct_trains
end
puts "north trains:"
puts trains_in_direction(trains,"north")
puts "south trains:"
puts trains_in_direction(trains,"east")
# 7. Pick one train and add another key/value pair for the first_departure_time. For simplicity, assume the first train always leave on the hour. You can represent this hour as an integer: 6 for 6:00am, 12 for noon, 13 for 1:00pm, etc.
trains.first[:first_departure_time] = 6
puts "Train with first departure time:"
puts trains
