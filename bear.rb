require_relative 'Fighter'

class Bear < Fighter
	def initialize(name, health, power)
		super(name, health, power)
	end

	def attack(enemy)
		puts "RAWR!!"
		enemy.lose_health(self.power, enemy.health)
	end
end

