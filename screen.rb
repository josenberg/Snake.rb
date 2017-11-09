class Screen
  def is_snake? snake_positions, x, y
	snake_positions.any? do |position| 
		position[:x] == x && position[:y] == y
	end
  end
  def is_apple? apple_position, x, y
	apple_position[:x] == x && apple_position[:y] == y	
  end
  def draw (snake_positions, apple_position)
  	10.times do |i| 
		10.times do  |j|
			if (self.is_snake? snake_positions, j, i)
				print "[\e[32m0\e[0m]"
			elsif (self.is_apple? apple_position, j, i)
				print "[\e[31mX\e[0m]"
			else 
				print "[ ]"
			end
		end
		print "\n"
  	end 
  	puts "-----"
  end 
end