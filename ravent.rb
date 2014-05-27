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
input ARGV[0]
require 'rainbow'

def exit
  Process.exit(0)
end

if input.nil?
  puts 'Arguments are required'
  exit
end
