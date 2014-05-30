# Define all methods here

# Main game method is an exception
# It's stored in game.rb

# Exit method (quits endure)
def exit
  Process.exit(0)
end

# Clear method (clears the command-prompt)
def clear
  system('clear')
end

def pause
  STDIN.gets
end

def wait
  sleep 2
end

def what?
  puts Rainbow('What?').yellow
  pause
  clear
end
