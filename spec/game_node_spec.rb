require './game_node'


describe GameNode do

  welcome = "Welcome to GameNode!"
  let(:root_node) { GameNode.new() }

  describe "#display" do

    before do
      root_node.display(welcome)
    end

    it "shows the correct display text input" do
      allow(root_node).to receive(:text).and_return("hello")
      expect(root_node.text).to eq("hello")
    end
  end 

  describe "#quit" do
    before do
      root_node.quit 
    end 
    it "should exit on quit" do
      expect(root_node.quit).to eq(true)
    end
  end 

  # describe "#options" do
  #   before do
  #     root_node = GameNode.new
  #     root_node_options = root_node.options
  #     new_node = GameNode.new(op)
  #     root_node.option("argument")
  #   end 
  #   it "should push new node into options array" do
  #     expect(root_node_options).to eq(["argument"])
  #   end 
  # end 
end

