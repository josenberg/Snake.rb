class Snake
	attr_accessor :position
	def initialize 
		# inicializa a snake com 
		# uma posição no meio da tela
		self.position = [{:x => 5, :y => 5}]
	end
end
