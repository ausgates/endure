require_relative 'requirements'
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

def wait!
  sleep 2
end

def loading
  3.times do
    print '.'
    sleep 0.6
  end
end

def typewriter(input)
  input.length.times do |i|
    print input[i]
    sleep 0.05
  end
  puts
end

def what?
  Rainbow('What?').yellow
  sleep 0.5
  clear
end

def say(player, message)
  return "#{player}: #{message}"
  wait!
end

def log(log)
  log
end

def you(name, message)
  return "#{name} #{message}"
  wait!
end

def normally(message)
  return message
  wait!
end

def next_scene
  loading
  pause
  clear
end
