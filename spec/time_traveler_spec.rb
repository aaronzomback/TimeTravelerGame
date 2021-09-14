
require './time_traveler'


describe TimeTraveler do

  welcome = "Welcome to TimeTraveler!"
  let(:root_node) { GameNode.new() }

  describe "#build" do
    it "creates a root node" do
      expect(root_node).to have_attributes(options: [], ask: nil)
    end
    it "shows the correct display" do
      allow(root_node).to receive(:text).and_return("hello")
      expect(root_node.text).to eq("hello")
    end
  end 
end

