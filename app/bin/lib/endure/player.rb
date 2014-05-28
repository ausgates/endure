# Main class for Player
class Player
  def initialize(name, health, hunger, sanity)
    @name = name
    @health = health
    @hunger = hunger
    @sanity = sanity
    @items = %w(banana)
    @friends = %w()
    @enemies = %w()
  end

  attr_reader :name, :health, :hunger, :sanity

  def eat_banana
    if @items.include? 'banana'
      # remove banana from array
      @hunger += 10
      puts "You now have #{@hunger} hunger"
      pause
    else
      puts Rainbow('You do not have a banana').red
      pause
    end
  end

  def suicide
    print Rainbow('Are you sure you want to kill yourself? [y/n] ').red
    suicide_choice = STDIN.gets.chomp
    if suicide_choice.downcase == 'y' || suicide_choice.downcase == 'yes'
      puts Rainbow('You have killed yourself').red
      exit
    else
      false
    end
  end
end
