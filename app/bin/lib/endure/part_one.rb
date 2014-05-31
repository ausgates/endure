require_relative 'requirements'

def part_one(player_object)
  player = player_object
  clear
  others = %w(Leon Rob Zachery Chet Keven
              Branden Kurt Burl Garry Denver
              Herbert Hunter Chad Chadwick
              Jamarcus Jessie Darien Tiller
              Sami Derek Jim Jon Gary Nick)

  friend = others[rand(others.length)]


  others.each do |o|
    while friend.include? o
      friend = others[rand(others.length)]
    end
  end
  others.delete_at(others.index(friend))

  enemy = others[rand(others.length)]

  others.each do |o|
    while enemy.include? o
      enemy = others[rand(others.length)]
    end
  end
  others.delete_at(others.index(enemy))
  player.add_enemy(enemy)

  player_name = Rainbow(player.name).green
  friend_name = Rainbow(friend).cyan

  # Start game
  sleep 1
  typewriter(you(player_name, "approaches a forest with #{friend_name}."))
  player.add_friend(friend)
  typewriter(log("#{friend_name} has been added to #{player_name}'s friend list."))
  typewriter(say(friend_name, "It's the fastest way to the movie theatre, #{player_name}."))
  typewriter(say(friend_name, "Trust me, I know this forest."))
  typewriter(you(player_name, "and #{friend_name} head into the darkness of the forest."))


  next_scene


  typewriter(log("In only a couple of minutes, #{player_name} and #{friend_name} are surrounded by nature."))
  typewriter(say(player_name, "#{friend_name}, where are we?"))
  typewriter(say(friend, "I have no idea, #{player_name}."))
  typewriter(log('There\'s a rustling in the bushes.'))
  typewriter(log('A man walks out of the bushes.')) # => this is player.enemies[0]
  typewriter(log('He looks drowsy.'))
  typewriter(say('Mysterious Man', 'Hello? I\'m lost.'))
  typewriter(log("The man slowly approaches #{player_name} and #{friend_name}."))
  typewriter(say('Mysterious Man', 'I have a map. Can one of you guys help me? (yes/no)'))
  user_input = STDIN.gets.chomp

  case user_input
  when 'yes'
    # you help the man
    typewriter(log("#{player_name} and #{friend_name} look over the man's shoulder to glance at the map."))
  else
    # you don't help the man
    typewriter(say('Mysterious Man', 'Wrong answer.'))
    typewriter(log('The man faintly whistles.'))
  end

  typewriter(log('Suddenly, four men wearing black clothing jump out behind a bush.'))
  typewriter(log("Two of the men grab #{friend_name} and pin him to the ground."))
  typewriter(log("One of the men takes out a needle and pricks it into the side of #{friend_name}'s neck."))
  typewriter(log("#{friend_name}'s eyes close."))
  typewriter(log("Two other men grab #{player_name} and hold his hands behind his back."))
  typewriter(log("#{player_name} struggles to break loose while one of the men takes out a familiar needle."))
  typewriter(log("The man pricks the needle into the side of #{player_name}'s neck."))
  typewriter(say('Mysterious Man', "You will forever remember the name #{Rainbow(player.enemies[0]).red}"))
  typewriter(say(Rainbow(player.enemies[0]).red, Rainbow('Hahahahahahahahahahaha').red))
  player.add_enemy(player.enemies[0])
  typewriter(log("#{player.enemies[0]} has been added to #{player_name}'s enemy list."))
  typewriter(log("All #{player_name} sees is black."))


  next_scene
  player.add_location('Beach')
  typewriter(log(Rainbow("#{location} has been added to your locations").red))
  typewriter(log("#{player_name} wakes up on a beach."))
  typewriter(log("#{friend_name} is nowhere to be seen."))
  typewriter(log("#{player_name} does not recognize where he is."))
  typewriter(log("#{player_name} stands up."))
end
