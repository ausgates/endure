#!/usr/bin/env ruby

#############################################
#                                       m
#   m mm   mmm   m   m   mmm   m mm   mm#mm
#   #"  " "   #  "m m"  #"  #  #"  #    #
#   #     m"""#   #m#   #""""  #   #    #
#   #     "mm"#    #    "#mm"  #   #    "mm
#
#############################################

input = ARGV[0]
require './ravent/requirements.rb'

# If input is nil, alert the user and exit ravent
if input.nil?
  puts Rainbow('Arguments are required').red
  exit
end

# The entire game is stored here

# Initialization for difficulty levels
def game(difficulty)
  case difficulty
  when 'easy'
    player = Player.new(10)
  when 'medium'
    player = Player.new(5)
  when 'hard'
    player = Player.new(3)
  end

  # Actual game
  puts "You currently have #{Rainbow(player.lives).blue} lives"
end

# Check Difficulty
case input
when 'easy'
  difficulty = 'easy'
when 'medium'
  difficulty = 'medium'
when 'hard'
  difficulty = 'hard'
when '-v'
  puts "ravent v#{Rainbow(Ravent::VERSION).green}"
  exit
else
  puts Rainbow('Unrecognized difficulty').red
  exit
end

# Call game method to start the game
game(difficulty)
