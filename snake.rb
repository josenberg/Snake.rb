class Snake
	attr_accessor :position
	def move direction
		new_position = {:x => self.position[0][:x], :y => self.position[0][:y]}
		case direction
		when "up"    	
			new_position[:y] -= 1
		when "down"
			new_position[:y] += 1
		when "right"
    		new_position[:x] += 1
		when "left"
    		new_position[:x] -= 1	
  		end

  		self.position.unshift (new_position)
  		self.position.pop
	end
	def initialize 
		# inicializa a snake com 
		# uma posição no meio da tela
		self.position = [{:x => 5, :y => 5}]
	end
end
