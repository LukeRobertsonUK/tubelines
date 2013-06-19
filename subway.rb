puts `clear`
trains = {}
trains[:l] = ["8th-l", "6th-l", "union", "3rd-l", "1st-l"]
trains[:n] = ["8th-n", "union", "23rd-n", "28th-n", "34th-n", "ts"]
trains[:s] = ["ap", "union", "23rd-s", "28th-s", "33rd-s", "gc"]

on_line = nil

def line_join(line)
  while condition
    puts "\nWhich train-line would you like to join?"
    puts "Your options are: L, N, S(ix):"
    response = gets.chomp.downcase.to_sym
    if trains.keys.include?(response)
      line = response
      condition = false
    else
      puts "I don't understand... please type your response exactly as shown."
    end
  end
end




puts "JOURNEY STOP CALCULATOR"
puts "\nWhich train-line would you like to join?"
line_join(on_line)



# condition1 = true
# while condition1
#   puts "\nWhich train-line would you like to join?"
#   puts "Your options are: L, N, S(ix):"
#   response = gets.chomp.downcase.to_sym
#   if trains.keys.include?(response)
#     on_line = response
#     condition1 = false
#   else
#     puts "I don't understand... please type your response exactly as shown."
#   end
# end

condition2 = true
while condition2
  puts "\nPlease choose a station from which to board the train: #{(trains[on_line]).join(", ")}"
  response = gets.chomp.downcase
  if trains[on_line].include?(response)
    on_station =  response
    condition2 = false
  else
    puts "I don't understand... please type your response exactly as shown."
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
  end
end

condition4 = true
while condition4
  puts "\nPlease choose a station from which to exit the train: #{(trains[off_line]).join(", ")}"
  response = gets.chomp.downcase
  if trains[off_line].include?(response)
    off_station = response
    condition4 = false
  else
    puts "I don't understand... please type your response exactly as shown."
  end
end

if on_station == off_station
 puts "You don't need to catch the train.... you are already at your destination!"
else

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
end
