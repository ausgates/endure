require_relative 'requirements'

def part_one(player_object)
  player = player_object
  clear
  others = %w(Leon Rob Zachery Chet Keven
              Branden Kurt Burl Garry Denver
              Herbert Hunter Chad Chadwick
              Jamarcus)
  friend = others[rand(others.length)]
  others.delete_at(others.index(friend))
  enemies = []

  2.times do
    enemy = others[rand(others.length)]
    others.delete_at(others.index(enemy))
    enemies.push(enemy)
  end

  player_name = Rainbow(player.name).green
  friend_name = Rainbow(friend).cyan

  # Start game
  sleep 1
  typewriter(you(player_name, "approaches a forrest with #{friend_name}."))
  typewriter(say(friend_name, "It's the fastest way to the movie theatre, #{player_name}."))
  typewriter(say(friend_name, "Trust me, I know this forrest."))
  typewriter(you(player_name, "and #{friend_name} head into the darkness of the forrest."))
  next_scene
end
