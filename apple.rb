class Apple 
  attr_accessor :position
  def generate_apple
    self.position = {:x => rand(10), :y => rand(10)}
  end
  def initialize 
    self.generate_apple
  end
end


