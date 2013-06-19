trains = {}
trains[:l] = ["8th-l", "6th-l", "union", "3rd-l", "1st-l"]
trains[:n] = ["8th-n", "union", "23rd-n", "28th-n", "34th-n", "ts"]
trains[:s] = ["ap", "union", "23rd-s", "28th-s", "33rd-s", "gc"]










puts "JOURNEY STOP CALCULATOR"
puts "\nWhich train-line would you like to join?"
puts "Your options are: L, N, S(ix):"
on_line = gets.chomp.downcase.to_sym
puts "\nPlease choose a station to board the train from: #{(trains[on_line]).join(", ")}"
on_station = gets.chomp.downcase

puts "\nWhich train-line would you like to exit?"
puts "Your options are: L, N, S(ix):"
off_line = gets.chomp.downcase.to_sym
puts "\nPlease choose a station to exit the train from: #{(trains[on_line]).join(", ")}"
off_station = gets.chomp.downcase