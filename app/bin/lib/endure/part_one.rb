require_relative 'requirements'

def starting_point(player_object)
  player = player_object
  clear
  others = %w(Leon Rob Zachery Chet Keven
              Branden Kurt Burl Garry Denver
              Herbert Hunter Chad Chadwick
              Jamarcus Jessie Darien Tiller
              Sami Derek Jim Jon Gary Nick
              Skip Sport Cameron Brad Douglas)

  friend = others[rand(others.length)]
  others.each do |o|
    friend = others[rand(others.length)] while friend.include? o
  end
  others.delete_at(others.index(friend))

  enemy = others[rand(others.length)]

  others.each do |o|
    enemy = others[rand(others.length)] while enemy.include? o
  end
  others.delete_at(others.index(enemy))
  player.add_enemy(enemy)

  player_name = Rainbow(player.name).green
  friend_name = Rainbow(friend).cyan
  # Start game
  sleep 1
  typewriter(you(player_name, "approaches a forest with #{friend_name}."))
  player.add_friend(friend)
  typewriter(log("#{friend_name} has been added to #{player_name}'s friends list."))
  typewriter(say(friend_name, "It's the fastest way to the movie theatre, #{player_name}."))
  typewriter(say(friend_name, 'Trust me, I know this forest.'))
  sleep 0.5
  puts
  sleep 0.4
  typewriter(you(player_name, "and #{friend_name} head into the darkness of the forest."))


  next_scene


  typewriter(log("In only a couple of minutes, #{player_name} and #{friend_name} are surrounded by nature."))
  typewriter(say(player_name, "#{friend_name}, where are we?"))
  typewriter(say(friend_name, "I have no idea, #{player_name}."))
  typewriter(log('There\'s a rustling in the bushes.'))
  typewriter(log('A man walks out of the bushes.')) # => this is player.enemies[0]
  typewriter(log('He looks drowsy.'))
  typewriter(say('Mysterious Man', 'Hello? I\'m lost.'))
  typewriter(log("The man slowly approaches #{player_name} and #{friend_name}."))
  typewriter(say('Mysterious Man', 'I have a map.'))
  typewriter(log("The man walks towards #{player_name} and points directly at him."))
  typewriter(say('Myserious Man', "Can #{Rainbow('you').green} help me? (yes/no)"))
  user_input = STDIN.gets.chomp

  # WHY WON'T THIS WORK?
  # while user_input.nil?
  #   typewriter(log('The man cups his hand to his ear.'))
  #   typewriter(say('Mysterious Man:', 'What did you say?'))
  #   user_input = STDIN.gets.chomp
  # end

  case user_input
  when 'yes'
    # you help the man
    typewriter(log("#{player_name} and #{friend_name} look over the man's shoulder to glance at the map."))
  else
    # you don't help the man
    typewriter(say('Mysterious Man', 'Wrong answer.'))
    typewriter(log('The man faintly whistles.'))
  end

  typewriter(log('Suddenly, four men wearing black clothing jump out from behind a bush.'))
  typewriter(log("Two of the men grab #{friend_name} and pin him to the ground."))
  typewriter(log("One of the men takes out a needle and pricks it into the side of #{friend_name}'s neck."))
  typewriter(log("#{friend_name}'s eyes close."))
  typewriter(log("Two other men grab #{player_name} and hold his hands behind his back."))
  typewriter(log("#{player_name} struggles to break loose while one of the men takes out a familiar needle."))
  typewriter(log("The man pricks the needle into the side of #{player_name}'s neck."))
  typewriter(say('Mysterious Man', "You will forever remember the name #{Rainbow(player.enemies[0]).red}."))
  typewriter(say(Rainbow(player.enemies[0]).red, Rainbow('Hahahahahahahahahahahhahahahahahahahahahahahahahahahahahaha.').red))
  player.add_enemy(player.enemies[0])
  typewriter(log("#{Rainbow(player.enemies[0]).red} has been added to #{player_name}'s #{Rainbow('enemies').red} list."))
  typewriter(log("All #{player_name} sees is black."))


  next_scene
  typewriter(log("#{player_name} wakes up on a beach."))
  player.add_location('Beach')
  player.move_silent('Beach')
  typewriter(log("#{Rainbow('Beach').bright} has been added to your locations."))
  typewriter(log("#{friend_name} is nowhere to be seen."))
  typewriter(log("#{player_name} does not recognize where he is."))
  typewriter(log("#{player_name} stands up."))
  next_scene

  def beach(player_object)
    player = player_object
    if player.name == 'jadon' || player.name == 'bobby' || player.name == 'bob'
      # it's mr. jadon yeo
      typewriter(log("#{player_name} has a stick in his butt."))
      typewriter(log("Does #{player_name} try to get the stick out of his butt? (yes/no)"))
      user_input = STDIN.gets.chomp
      if user_input == 'yes'
        typewriter(log("#{player_name} attempts to get the stick out of his butt."))
        # put random generator to see if stick comes out
        if rand(1) == 0
          typewriter(log("The stick is jammed in #{player_name}'s butt pretty far in."))
          typewriter(log("#{player_name} is not able to get the stick out of his butt."))
        else
          typewriter(log("The stick pops out of #{player_name}'s butt."))
        end
      else
        typewriter(log("For whatever reason, #{player_name} decides to keep the stick in his butt."))
      end
    end

    # actually get into the game
    typewriter(log("#{player_name} hears a faint sound in the distant."))
    typewriter(say(Rainbow(player.enemies[0]).red, 'Help me carry him over here!'))
    typewriter(log("What does #{player_name} do?"))
    next_scene
  end
end

def main_game(player_object)
  player = player_object
  location = player.location
  case location
  when 'Starting Point'
    starting_point(player)
  when 'Beach'
    beach(player)
  else
    what?
  end
end
