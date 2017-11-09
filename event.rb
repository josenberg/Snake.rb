class Event
	def snakeAteApple? snake_positions, apple_position 
		snake_positions.any? do |position|  
			position[:x] == apple_position[:x] && position[:y] == apple_position[:y]
		end
	end
	def snakeHitWall? snake_positions
		snake_positions.any? do |position|  
			(position[:x] > 9 || position[:x] < 0) || (position[:y] > 9 || position[:y] < 0)
		end
	end

	def snakeAteItsefl? snake_positions
		snake_positions.uniq{ |p| p.values_at(:x, :y) }.size < snake_positions.size
	end
end