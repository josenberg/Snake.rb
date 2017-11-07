load "input.rb"

class Engine 
  def run 
  	while true
  	  # Le a entrada do usuario	
  	  movement = read_movement
  	  # para de executar o programa caso algo alem das setinhas seja recebido
   	  break if movement == "quit"   
   	  puts "Running #{movement}"
	end
  end
end

engine = Engine.new
engine.run





