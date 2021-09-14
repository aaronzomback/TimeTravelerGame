
require './time_traveler'


describe TimeTraveler do

  welcome = "Welcome to TimeTraveler!"
  let(:root_node) { GameNode.new() }

  describe "#build" do
    it "creates a root node" do
      expect(root_node).to have_attributes(options: [], ask: nil)
    end
    it "shows the correct display" do
      p root_node.inspect
      p root_node.text
    end 
  end 
end

