#!/usr/bin/env ruby

#############################################
#                                       m
#   m mm   mmm   m   m   mmm   m mm   mm#mm
#   #"  " "   #  "m m"  #"  #  #"  #    #
#   #     m"""#   #m#   #""""  #   #    #
#   #     "mm"#    #    "#mm"  #   #    "mm
#
#############################################

name = ARGV[0]
difficulty_level = ARGV[1]
require './ravent/requirements.rb'

if difficulty_level == '-v'
  puts "ravent v#{Rainbow(Ravent::VERSION).green}"
  exit
end

# If input is nil, alert the user and exit ravent
if name.nil? || difficulty_level.nil?
  puts Rainbow('Not enough arguments.').red
  exit
end

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

# Check Difficulty
case difficulty_level
when 'easy'
  difficulty = 'easy'
when 'medium'
  difficulty = 'medium'
when 'hard'
  difficulty = 'hard'
else
  puts "#{Rainbow('Error:').red.underline} Unrecognized difficulty"
  exit
end

# Call game method to start the game
game(name, difficulty)
