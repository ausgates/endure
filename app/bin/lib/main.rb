#!/usr/bin/env ruby

# # # # # # # # # # # # # # # # # # # # # # # #
#                    #
#    mmm   m mm    mmm#  m   m   m mm   mmm
#   #"  #  #"  #  #" "#  #   #   #"  " #"  #
#   #""""  #   #  #   #  #   #   #     #""""
#   "#mm"  #   #  "#m##  "mm"#   #     "#mm"
#
# # # # # # # # # # # # # # # # # # # # # # # #

# Set 'name' and 'difficulty_level' to the first and second arguments
name = ARGV[0]
difficulty_level = ARGV[1]

# Require main requirements files
require './endure/requirements.rb'

# If the first argument is '-v', just display the version and exit endure
if ARGV[0] == '-v'
  puts "endure v#{Rainbow(Endure::VERSION).green}"
  exit
end

# If 'name' or 'difficulty_level' is nil, alert the user and exit endure
if name.nil? || difficulty_level.nil?
  puts "#{Rainbow('Error:').red.underline} Not enough arguments"
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