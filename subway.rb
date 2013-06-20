puts `clear`
trains = {
    :l => ["8th-l", "6th-l", "union", "3rd-l", "1st-l"],
    :n => ["8th-n", "union", "23rd-n", "28th-n", "34th-n", "ts"],
    :s => ["ap", "union", "23rd-s", "28th-s", "33rd-s", "gc"],
  }

def line_choice(lines)
  condition = true
  while condition
    puts "Your options are: L, N, S(ix):"
    response = gets.chomp.downcase.to_sym
    if lines.keys.include?(response)
          condition = false
        else
      puts "I don't understand... please type your response exactly as shown."
    end
  end
  response
end

def station_choice(lines, chosen_line)
condition = true
  while condition
    puts "\nPlease choose a station: #{(lines[chosen_line]).join(", ")}"
    response = gets.chomp.downcase
    if lines[chosen_line].include?(response)
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
on_line = line_choice(trains)

on_station = station_choice(trains, on_line)

puts "\nWhich train-line would you like to exit?"
off_line = line_choice(trains)

off_station = station_choice(trains, off_line)

if on_station == off_station
   puts "You don't need to catch the train.... you are already at your destination!"
elsif on_line == off_line
  stops = trains[on_line].index(on_station) - trains[on_line].index(off_station)
  if stops < 0
    stops *= -1
    puts "\nYour journey is #{stops} stops!"
  end
else
  intersection = (trains[on_line] & trains[off_line]).first.to_s

  to_interesection = (trains[on_line].index(on_station)) - (trains[on_line].index(intersection))
    if to_interesection< 0
      to_interesection *= -1
    end

    from_intersection = trains[off_line].index(off_station) - trains[off_line].index(intersection)
    if from_intersection < 0
      from_intersection *= -1
    end

    puts "\nYour journey is #{to_interesection + from_intersection} stops!"
  end



