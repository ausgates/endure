require_relative 'game'

# Main class for Player
class Player
  def initialize(name, health, hunger, sanity)
    @name = name.capitalize
    @health = health
    @hunger = hunger
    @sanity = sanity
    @friends = %w()
    @enemies = %w()
    @items = [
      "lint",
      "bandage"
    ]
    @foods = [
      'banana',
      'yogurt',
      'ketchup',
      'brownie',
      'sauce',
      'beans',
      'pills',
      'pickle',
      'mayo'
      # 'cheese'
      # 'cashews',
      # 'jam',
      # 'watermelon',
      # 'chili',
      # 'potato',
    ]
  end

  attr_reader :name, :health, :hunger, :sanity, :friends, :enemies, :foods, :items

  def list_stats
    puts
    puts "Player #{Rainbow(@name).green} has #{Rainbow(@health).blue}% health"
    puts "Player #{Rainbow(@name).green} is #{Rainbow(@hunger).yellow}% fed"
    puts "Player #{Rainbow(@name).green} is #{Rainbow(@sanity).cyan}% sane"
  end

  def list_items
    puts
    counter = 0
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

  def eat(food)
    puts
    if @foods.include? food
      @foods.delete_at(@foods.index(food))
      if food == "pills"
        @sanity += 10
      else
        @hunger += 10
      end
      player_name = Rainbow(@name).green
      colored_food = Rainbow(food).yellow
      puts "Player #{player_name} ate #{Rainbow('1').blue} #{colored_food}"
      pause
    elsif @foods.nil?
      puts Rainbow('You have no food left').red
      pause
    else
      puts "Player #{player_name} does not have a #{Rainbow(food).yellow}"
      pause
    end
  end

  def use(item)
    def nothing
      puts 'Nothing happened'
    end
    case item
    when 'bandage'
      player_name = Rainbow(@name).green
      colored_item = Rainbow(item).yellow
      if @items.include? item
        @items.delete_at(@items.index(item))
        @health += 10
        puts "Player #{player_name} used #{Rainbow('1').blue} #{colored_item}"
      elsif @items.nil?
        puts Rainbow('You have no items')
      else
        puts "Player #{player_name} does not have a #{colored_item}"
      end
    when 'lint'
      nothing
    else
      what?
    end
    pause
    clear
  end

  def trash(thing)
    if @foods.include? thing
      puts Rainbow("Are you sure you want to trash your #{thing}? [yes / no ]").red
      @foods.delete_at(@foods.index(thing)) if STDIN.gets.chomp.downcase == 'yes'
    elsif @items.include? thing
      puts Rainbow("Are you sure you want to trash your #{thing}? [yes / no ]").red
      @item.delete_at(@item.index(thing)) if STDIN.gets.chomp.downcase == 'yes'
    else
      puts Rainbow("You don't have a #{thing}").yellow
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
      puts "Player #{Rainbow(@name).green} died with #{Rainbow(@health).blue}% health"
      puts "Player #{Rainbow(@name).green} was #{Rainbow(@hunger).yellow}% fed"
      puts "Player #{Rainbow(@name).green} was #{Rainbow(@sanity).cyan}% crazy"
      @items.each do |i|
        puts "Player #{Rainbow(@name).green} had #{Rainbow(i).yellow}"
      end
      exit
    else
      false
    end
  end

  def add_friend(friend)
    @friends.push(friend)
  end

  def list_friends
    clear
    @friend.each do |f|
      puts f
    end
  end
end

# We only want to run this once
# Right now, nothing works
# Do some instantiating
def init(name, difficulty)
  case difficulty
  when 'easy'
    health = 200
    hunger = 150
    sanity = 175
  when 'medium'
    health = 100
    hunger = 100
    sanity = 100
  when 'hard'
    health = 50
    hunger = 50
    sanity = 40
  end
  player = Player.new(name, health, hunger, sanity)
  game(player)
end
