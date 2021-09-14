
require './time_traveler'


describe TimeTraveler do

  welcome = "Welcome to TimeTraveler!"
  let(:root_node) { GameNode.new() }

  describe "#build" do
    it "initializes a root node" do
      expect(root_node).to have_attributes(options: [], ask: nil)
    end
  end 
end

