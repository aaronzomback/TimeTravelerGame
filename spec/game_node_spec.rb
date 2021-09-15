require './game_node'


describe GameNode do

  let(:welcome) { "Welcome to GameNode!" }
  let(:root_node) do
    GameNode.new do
      display "welcome"

      option "yes" do
        display "some text"
          option "jump" do
            display "the end"
          end 
      end

      option "no" do
        display "some text"
          option "jump" do
            display "the end"
          end 
      end
    end
  end




  describe "a simple game" do
    subject do
      root_node
    end

    it "has the right tree struct" do
      expect(root_node.text).to eq 'welcome'
      expect(root_node.options.size).to eq 2
      expect(root_node.options[0].ask).to eq 'yes'
    end
  end

  describe "#text" do
    let(:message) { "message" }

    subject do
      root_node.display(message)
      root_node.text
    end

    context 'with an empty message' do
      let(:message) { "" }

      it { is_expected.to eq message }
    end

    context 'with valid message' do
      let(:message) { welcome }

      it { is_expected.to eq message }

      it "matches the value" do
        expect(subject).to eq message
      end


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
end

