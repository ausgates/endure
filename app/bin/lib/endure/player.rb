# Main class for Player
class Player
  def initialize(name, health, hunger, sanity)
    @name = name
    @health = health
    @hunger = hunger
    @sanity = sanity
    @items = %w(banana yogurt)
    @friends = %w()
    @enemies = %w()
  end

  attr_reader :name, :health, :hunger, :sanity

  def display_stats
    puts
    puts "Player #{Rainbow(@name).green} has #{Rainbow(@health).blue}% health"
    puts "Player #{Rainbow(@name).green} is #{Rainbow(@hunger).yellow}% fed"
    puts "Player #{Rainbow(@name).green} is #{Rainbow(@sanity).cyan}% crazy"
    pause
  end

  def list_items
    puts
    counter = 1
    @items.each do |i|
      counter += 1
      if counter.even?
        print '- '
        puts Rainbow(i).blue
      else
        print '- '
        puts Rainbow(i).green
      end
    end
    pause
  end

  def eat_banana
    puts
    if @items.include? 'banana'
      @items.delete_at(@items.index('banana'))
      @hunger += 10
      player_name = Rainbow(@name).green
      player_hunger = Rainbow(@hunger).yellow
      puts "Player #{player_name} is now #{player_hunger}% hungry"
      pause
    else
      puts Rainbow("Player #{player_name} does not have a banana").red
      pause
    end
  end

  def suicide
    puts
    player_name = Rainbow(@name).green
    player_hunger = Rainbow(@hunger).yellow
    print Rainbow('Are you sure you want to kill yourself? [y/n] ').red
    suicide_choice = STDIN.gets.chomp
    if suicide_choice.downcase == 'y' || suicide_choice.downcase == 'yes'
      him_her_self = Rainbow('himself / herself').yellow
      puts "Player #{player_name} killed #{him_her_self}"
      exit
    else
      false
    end
  end
end
