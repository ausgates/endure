# Main class for Player
class Player
  def initialize(name, lives)
    @items = []
    @health = health
    @name = name
  end

  attr_reader :name, :health

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
