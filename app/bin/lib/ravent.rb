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

if ARGV[0] == '-v'
  puts "ravent v#{Rainbow(Ravent::VERSION).green}"
  exit
end

# If input is nil, alert the user and exit ravent
if name.nil? || difficulty_level.nil?
  puts Rainbow('Not enough arguments.').red
  exit
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
