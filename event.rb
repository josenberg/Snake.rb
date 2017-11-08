class Event
	def snakeAteApple? snake_positions, apple_position 
		snake_positions.any? do |position|  
			position[:x] == apple_position[:x] && position[:y] == apple_position[:y]
		end
	end
end