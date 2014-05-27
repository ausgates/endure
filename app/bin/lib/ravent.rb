#!/usr/bin/env ruby

#############################################
#                                       m
#   m mm   mmm   m   m   mmm   m mm   mm#mm
#   #"  " "   #  "m m"  #"  #  #"  #    #
#   #     m"""#   #m#   #""""  #   #    #
#   #     "mm"#    #    "#mm"  #   #    "mm
#
#############################################

VERSION = 0.1
input = ARGV[0]
require 'rainbow'

def exit
  Process.exit(0)
end

if input.nil?
  puts 'Arguments are required'
  exit
end

# The entire game is stored here
def game(difficulty)
  case difficulty
  when 'easy'
    lives = 10
  when 'medium'
    lives = 5
  when 'hard'
    lives = 3
  end
  puts "You currently have #{Rainbow(lives).blue} lives"
end

# Check Difficulty
case input
when 'easy'
  difficulty = 'easy'
when 'medium'
  difficulty = 'medium'
when 'hard'
  difficulty = 'hard'
else
  puts 'Unrecognized difficulty'
  exit
end

# Call game method to start the game
game(difficulty)
