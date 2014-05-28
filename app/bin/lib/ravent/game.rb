# The entire game is stored here

# Initialization for difficulty levels
def game(name, difficulty)
  case difficulty
  when 'easy'
    lives = 10
  when 'medium'
    lives = 5
  when 'hard'
    lives = 3
  end

  player = Player.new(name, lives)
  player_name = Rainbow(player.name).green
  player_lives = Rainbow(player.lives).blue

  # Actual game
  puts "New player #{player_name} initialized"
  puts "Player #{player_name} has #{player_lives} lives"
end
