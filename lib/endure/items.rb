require_relative 'game'

class Item

	attr_reader :name, :type, :benefit

	def initialize(name, type, benefit)
		@name = name
		@type = type
		@benefit = benefit
	end
end

gun = Item.new(gun, weapon, kill)
