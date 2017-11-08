load "input.rb"
load "screen.rb"
load "snake.rb"
load "apple.rb"
load "event.rb"

class Engine 
  def run 
  	screen = Screen.new
    snake = Snake.new
    apple = Apple.new
    event = Event.new
    score = 0
  	while true
      puts "current score: #{score}"
      puts "Snake position: x:#{snake.position[0][:x]} y:#{snake.position[0][:y]}"
      puts "Apple position: x:#{apple.position[:x]} y:#{apple.position[:y]}"
  	  # Le a entrada do usuario	
  	  movement = read_movement
      snake.move movement
      
      if event.snakeAteApple? snake.position, apple.position
        score += 1
        apple.generate_apple
      end

  	  # para de executar o programa caso algo alem das setinhas seja recebido
   	  break if movement == "quit"   
   	  # desenha um novo frame
   	  screen.draw snake.position, apple.position
	  end
  end
end

engine = Engine.new
engine.run