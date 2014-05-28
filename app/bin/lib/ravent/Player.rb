# Main class for Player
class Player
  def initialize(lives)
    @items = []
    @lives = lives
  end
  def lives
    return @lives
  end
  def suicide
    print Rainbow('Are you sure you want to kill yourself? [y/n] ').red
    suicideChoice = gets.chomp
    if suicideChoice == 'y'
      exit
    else
      print Rainbow('That\'s probably a good idea.').green
    end
  end
end
