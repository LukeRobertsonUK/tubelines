puts `clear`
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
puts "\nPlease choose a station to exit the train from: #{(trains[off_line]).join(", ")}"
off_station = gets.chomp.downcase

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
