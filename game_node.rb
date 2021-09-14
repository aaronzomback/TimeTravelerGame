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
end