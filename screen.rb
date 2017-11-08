class Screen

  def is_snake? snake_positions, x, y
	snake_positions.any? do |position| 
		position[:x] == x && position[:y] == y
	end
  end
  def draw (snake_positions)
  	10.times do |i| 
		10.times do  |j|
			if self.is_snake? snake_positions, i, j 
				print "[0]"
			else 
				print "[ ]"
			end
		end
		print "\n"
  	end 
  	puts "-----"
  end 
end

