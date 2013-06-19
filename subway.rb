puts `clear`
def trains
  {
    :l => ["8th-l", "6th-l", "union", "3rd-l", "1st-l"],
    :n => ["8th-n", "union", "23rd-n", "28th-n", "34th-n", "ts"],
    :s => ["ap", "union", "23rd-s", "28th-s", "33rd-s", "gc"],
  }
end

def line_choice
  condition = true
  while condition
    puts "Your options are: L, N, S(ix):"
    response = gets.chomp.downcase.to_sym
    if trains.keys.include?(response)
          condition = false
        else
      puts "I don't understand... please type your response exactly as shown."
    end
  end
  response
end

def station_choice(x)
condition = true
  while condition
    puts "\nPlease choose a station: #{(trains[x]).join(", ")}"
    response = gets.chomp.downcase
    if trains[x].include?(response)
      on_station =  response
      condition = false
    else
      puts "I don't understand... please type your response exactly as shown."
    end
  end
  response
end

puts "JOURNEY STOP CALCULATOR"
puts "\nWhich train-line would you like to join?"
on_line = line_choice

on_station = station_choice(on_line)

puts "\nWhich train-line would you like to exit?"
off_line = line_choice

off_station = station_choice(off_line)

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
