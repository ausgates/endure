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
    puts '[1] Eat a banana'
    puts '[2] Display stats'
    puts '[3] List items'
    puts '[4] End it all'
    puts
    user_input = STDIN.gets.chomp
    case user_input.downcase

    when 'eat a banana' || '1'
      player.eat_banana
    when 'display stats' || '2'
      player.display_stats
    when 'list items' || '3'
      player.list_items
    when 'end it all' || '4'
      player.suicide
    else
      what?
    end
  end
end
