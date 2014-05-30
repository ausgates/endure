require_relative 'requirements'

# Main game method
def game(player_object)
  player = player_object
  # Create 'player_name' and 'player_health' variables,
  # which contain the appropriately coloured versions of themselves
  # Make a file to 'require' these later
  player_name = Rainbow(player.name).green # name = green
  player_health = Rainbow(player.health).blue # health = blue
  player_hunger = Rainbow(player.hunger).yellow # hunger = yellow
  player_sanity = Rainbow(player.sanity).cyan # sanity = cyan

  # The actual game
  puts Rainbow('Welcome to endure').red.underline
  puts "New player #{player_name} initialized"
  puts "Player #{player_name} has #{player_health}% health"
  puts "Player #{player_name} is #{player_hunger}% fed"
  puts "Player #{player_name} is #{player_sanity}% sane"
  puts
  puts 'Press enter to continue..'
  STDIN.gets

  while true
    clear
    puts Rainbow('What would you like to do?').inverse
    player.list_stats
    puts
    puts "- #{Rainbow('Start').green}"
    puts "\t - #{Rainbow('Game').blue}"
    puts
    puts "- #{Rainbow('Eat').green}"
    if player.foods.empty?
      puts "\t - #{Rainbow('[ No Food ]').blue}"
    else
      player.foods.each do |i|
        puts "\t - #{Rainbow(i).blue}"
      end
    end
    puts
    puts "- #{Rainbow('Use').green}"
    if player.items.empty?
      puts "\t - #{Rainbow('[ No Items ]').blue}"
    else
      player.items.each do |i|
        puts "\t - #{Rainbow(i).blue}"
      end
    end
    puts
    puts "- #{Rainbow('Trash').green}"
    if player.foods.empty?
      puts "\t - #{Rainbow('[ No Food ]').blue}"
    else
      player.foods.each do |i|
        puts "\t - #{Rainbow(i).blue}"
      end
    end
    if player.items.empty?
      puts "\t - #{Rainbow('[ No Items ]').blue}"
    else
      player.items.each do |i|
        puts "\t - #{Rainbow(i).blue}"
    end
    puts
    puts "- #{Rainbow('Kill').green}"
    puts "\t - #{Rainbow('Myself').blue}"
    puts

    print "#{Rainbow('> ').red}"
    user_input = STDIN.gets.chomp.split ' '.downcase

    case user_input[0]

    when 'start'
      case user_input[1]
      when 'game'
        # Game
        part_one(player)
      else
        what?
      end
    when 'eat'
      if user_input[1].nil?
        what?
      else
        player.eat(user_input[1])
      end
    when 'use'
        if user_input[1].nil?
          what?
        else
          player.use(user_input[1])
        end
    when 'trash'
        if user_input[1].nil?
          what?
        else
          player.trash(user_input[1])
        end
    when 'kill'
      case user_input[1]
      when 'myself'
        player.suicide
      else
        what?
      end
    when 'exit'
      exit
    else
      what?
    end
  end
end
  part_one
end
