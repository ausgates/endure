# Main game method
def game(name, difficulty)
  case difficulty
  when 'easy'
    health = 200
    hunger = 150
    sanity = 100
  when 'medium'
    health = 100
    hunger = 100
    sanity = 50
  when 'hard'
    health = 50
    hunger = 50
    sanity = 40
  end

  # Do some instantiating
  player = Player.new(name, health, hunger, sanity)

  # Create 'player_name' and 'player_health' variables,
  # which contain the appropriately coloured versions of themselves
  # Make a file to 'require' these later
  player_name = Rainbow(player.name).green # name = green
  player_health = Rainbow(player.health).blue # health = blue
  player_hunger = Rainbow(player.hunger).yellow # hunger = yellow
  player_sanity = Rainbow(player.sanity).cyan # sanity = cyan

  # The actual game
  puts "Welcome to #{Rainbow('endure').red.underline}"
  puts "New player #{player_name} initialized"
  puts "Player #{player_name} has #{player_health}% health"
  puts "Player #{player_name} is #{player_hunger}% fed"
  puts "Player #{player_name} is #{player_sanity}% crazy"
  puts
  puts 'Press enter to continue..'
  STDIN.gets

  while true
    clear
    puts 'What would you like to do?'
    puts
    puts "- #{Rainbow('Eat').green}"
    player.items.each do |i|
      puts "\t - #{Rainbow(i).blue}"
    end
    puts
    puts "- #{Rainbow('List').green}"
    puts "\t - #{Rainbow('List items').blue}"
    puts "\t - #{Rainbow('List stats').blue}"
    puts
    puts "- #{Rainbow('Kill').green}"
    puts "\t - #{Rainbow('Myself').blue}"
    puts

    print "#{Rainbow('> ').red}"
    user_input = STDIN.gets.chomp.split ' '

    case user_input[0]

    when 'eat'
      if user_input[1].nil?
        what?
      else
        player.eat(user_input[1])
      end
    when 'list'
      case user_input[1]
      when 'stats'
        player.display_stats
      when 'items'
        player.list_items
      else
        what?
      end
    when 'kill'
      case user_input[1]
      when 'myself'
        player.suicide
      else
        what?
      end
    else
      what?
    end
  end
end
