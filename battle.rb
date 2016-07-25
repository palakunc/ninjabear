require_relative 'bear'
require_relative 'ninja'

class Battle 
	attr_reader :fighter1, :fighter2
	def initialize(fighter1, fighter2)
		@fighter1 = fighter1
		@fighter2 = fighter2
	end
	def fight 
		@fighter1.attack(@fighter2)	
		@fighter2.attack(@fighter1)	
		self.battle_status
	end
	def battle_status
		puts "#{@fighter1.name} has #{@fighter1.health} health remaining."
		puts "#{@fighter2.name} has #{@fighter2.health} health remaining."
	end
	def bearfightninja
		@fighter1.attack(@fighter2)	
		self.battle_status
	end	
	def ninjafightbear
		@fighter2.attack(@fighter1)	
		self.battle_status

	end	
end

bear = Bear.new('Yogi', 100, 20)
ninja = Ninja.new('Chuck', 100, 25)
battle = Battle.new(bear, ninja)

yogi_name = battle.fighter1.name 
chuck_name = battle.fighter2.name 

puts "#{yogi_name} by #{chuck_name} .. 3..2...1"
until battle.fighter1.health <=0 || battle.fighter2.health <=0
	puts "First up, is #{yogi_name}:"
	battle.bearfightninja
	puts "Next up, is #{chuck_name}:"
	battle.ninjafightbear
	puts ""
end




