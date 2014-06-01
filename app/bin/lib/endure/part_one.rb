require_relative 'requirements'

def part_one(player_object)

  # Start game
  sleep 1
  typewriter(you(player_name, "approaches a forest with #{friend_name}."))
  player.add_friend(friend)
  typewriter(log("#{friend_name} has been added to #{player_name}'s friend list."))
  typewriter(say(friend_name, "Come on, #{player_name}, it's the fastest way to the movie theatre."))
  typewriter(say(friend_name, 'Trust me, I know this forest.'))
  sleep 0.8
  puts
  sleep 0.2
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
  typewriter(log("The man points at #{player_name}"))
  typewriter(say('Mysterious Man', "Can #{Rainbow('you').green} help me find where I am? (yes/no)"))
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
  typewriter(say(Rainbow(player.enemies[0]).red, Rainbow('Hahahahahahahahahahahhahahahahahahahahahahahahahahahahahahahahahahaha').red))
  player.add_enemy(player.enemies[0])
  typewriter(log("#{player.enemies[0]} has been added to #{player_name}'s #{Rainbow('enemies').red} list."))
  typewriter(log("All #{player_name} sees is black."))


  next_scene
  typewriter(log("#{player_name} wakes up on a beach."))
  player.add_location('Beach')
  player.move_silent('Beach')
  typewriter(log("#{Rainbow('\'Beach\'')} has been added to your locations"))
  typewriter(log("#{friend_name} is nowhere to be seen."))
  typewriter(log("#{player_name} does not recognize where he is."))
  typewriter(log("#{player_name} stands up."))
  next_scene
end

def beach(player_object)
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
      typewriter(log("#{player_name} decides to keep the stick in his butt."))
    end
  end

  # actually get into the game
  typewriter(log("#{player_name} hears a faint sound in the distant."))
  typewriter(say(Rainbow(player.enemies[0]).red, 'Help me carry him over here!'))
  typewriter(log("What does #{player_name} do?"))
  next_scene
end
