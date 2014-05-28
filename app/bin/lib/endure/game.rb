# Main game method
def game(name, difficulty)
  case difficulty
  when 'easy'
    health = 200
  when 'medium'
    health = 100
  when 'hard'
    health = 50
  end

  # Do some instantiating
  player = Player.new(name, health)

  # Create 'player_name' and 'player_health' variables,
  # which contain the appropriately coloured versions of themselves
  player_name = Rainbow(player.name).green
  player_health = Rainbow(player.health).blue

  # The actual game
  clear
  puts "New player #{player_name} initialized"
  puts "Player #{player_name} has #{player_health}% health"
  puts "Welcome to #{Rainbow('endure')}"
  puts 'What would you like to do?'
  puts
  puts Rainbow('End it all')
  user_input = gets.chomp
  if user_input.downcase == 'end it all'
    suicide
  else
    while true do
      clear
      puts 'What would you like to do?'
      puts
      puts Rainbow('End it all').red
      puts
      user_input = gets.chomp
      break if user_input.downcase == 'end it all'
    end
  end
  suicide
end
