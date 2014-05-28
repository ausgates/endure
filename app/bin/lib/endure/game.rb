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
  puts "New player #{player_name} initialized"
  puts "Player #{player_name} has #{player_health}% health"
end
