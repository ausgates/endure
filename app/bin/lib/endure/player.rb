# Main class for Player
class Player
  def initialize(name, health)
    @name = name
    @health = health
    @items = []
    @friends = []
    @enemies = []
  end

  attr_reader :name, :health

  def suicide
    print Rainbow('Are you sure you want to kill yourself? [y/n] ').red
    suicide_choice = gets.chomp
    exit if suicide_choice.downcase == 'y'
  end
end
