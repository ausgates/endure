# The entire game is stored here

# Initialization for difficulty levels
def game(name, difficulty)
  case difficulty
  when 'easy'
    health = 200
  when 'medium'
    health = 100
  when 'hard'
    health = 50
  end

  player = Player.new(name, health)
  player_name = Rainbow(player.health).green
  player_health = Rainbow(player.health).blue

  # Actual game
  puts "New player #{player_name} initialized"
  puts "Player #{player_name} has #{player_health}% health"
end
