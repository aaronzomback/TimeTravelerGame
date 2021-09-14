class GameEngine
  def initialize(root)
      @root = root
  end

  def run
      execute(@root)
  end

  private

  def execute(root)
      puts(root.text)
      options = root.options.map(&:ask)

      if root.quit?         
        abort
      elsif options.empty?
        execute(@root)
      end

      puts(options.inspect)
      option = gets.strip
      while !options.include?(option)
          puts "option not found. try again"
          option = gets.strip
      end
      execute(root.options.find { |o| o.ask == option })
  end

end