# Main class for Player
class Player
  def initialize(lives)
    @items = []
    @lives = lives
  end

  attr_reader :lives

  def suicide
    print Rainbow('Are you sure you want to kill yourself? [y/n] ').red
    suicide_choice = gets.chomp
    if suicide_choice == 'y'
      exit
    else
      print Rainbow('That\'s probably a good idea.').green
    end
  end
end
