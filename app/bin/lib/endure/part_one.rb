require_relative 'player'

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
    enemy1 = others[rand(others.length)]
    others.delete_at(others.index(enemy1))
    enemies.push(enemy1)
  end

  puts "Player #{player.name} approaches a forrest with #{friend}"
  pause
end