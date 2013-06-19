puts `clear`
trains = {}
trains[:l] = ["8th-l", "6th-l", "union", "3rd-l", "1st-l"]
trains[:n] = ["8th-n", "union", "23rd-n", "28th-n", "34th-n", "ts"]
trains[:s] = ["ap", "union", "23rd-s", "28th-s", "33rd-s", "gc"]

puts "JOURNEY STOP CALCULATOR"
condition1 = true
while condition1
  puts "\nWhich train-line would you like to join?"
  puts "Your options are: L, N, S(ix):"
  response = gets.chomp.downcase.to_sym
  if trains.keys.include?(response)
    on_line = response
    condition1 = false
  else
    puts "I don't understand... please type your response exactly as shown."
    puts
  end
end

condition2 = true
while condition2
  puts "\nPlease choose a station from which to board the train: #{(trains[on_line]).join(", ")}"
  response = gets.chomp.downcase
  if trains[on_line].include?(response)
    on_station =  response
    condition2 = false
  else
    puts "I don't understand... please type your response exactly as shown."
    puts
  end
end

condition3 = true
while condition3
  puts "\nWhich train-line would you like to exit?"
  puts "Your options are: L, N, S(ix):"
  response = gets.chomp.downcase.to_sym
  if trains.keys.include?(response)
    off_line = response
    condition3 = false
  else
    puts "I don't understand... please type your response exactly as shown."
    puts
  end
end

condition4 = true
while condition4
  puts "\nPlease choose a station to exit the train from: #{(trains[off_line]).join(", ")}"
  response = gets.chomp.downcase
  if trains[off_line].include?(response)
    off_station = response
    condition4 = false
  else
    puts "I don't understand... please type your response exactly as shown."
    puts
  end
end

#journey to union
to_union = (trains[on_line].index(on_station)) - (trains[on_line].index("union"))
if to_union < 0
  to_union *= -1
end

#journey from union
from_union = trains[off_line].index(off_station) - trains[off_line].index("union")
if from_union < 0
  from_union *= -1
end

puts "\nYour journey is #{to_union + from_union} stops!"
