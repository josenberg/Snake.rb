load "input.rb"
load "screen.rb"

class Engine 
  def run 
  	screen = Screen.new
  	while true
  	  # Le a entrada do usuario	
  	  movement = read_movement
  	  # para de executar o programa caso algo alem das setinhas seja recebido
   	  break if movement == "quit"   
   	  # desenha um novo frame
   	  screen.draw   	  
	end
  end
end

engine = Engine.new
engine.run





