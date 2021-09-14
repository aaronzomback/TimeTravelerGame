class GameNode
  def initialize(op = nil, &blk)
    @options = []
    @ask = op

    if block_given?
        instance_eval(&blk)
    end
  end

  def display(text)
    @text = text
  end

  def option(op, &blk) 
    node = GameNode.new(op)
    @options << node

    node.instance_eval(&blk)
  end

  def quit
      @quit = true
  end

  def quit?
      @quit
  end
end