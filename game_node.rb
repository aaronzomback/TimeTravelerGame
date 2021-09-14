class GameNode

  attr_accessor :children
  attr_accessor :text
  attr_accessor :option

  def initialize(text, option = nil)
    @children = []
    @text = text
    @option = option
  end
  
  def create_child(text, option = nil)
    @child = Node.new(text, option)
  end

  def add_child(child)
    @children << @child
  end 
end