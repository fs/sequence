require "sequence"

describe Sequence do
  let(:sequence) { Sequence.new("1") }

  describe "#to_s" do
    it "returns initial value" do
      expect(sequence.to_s).to eql "1"
    end
  end

  describe "#next" do
    it "generates next state" do
      expect(sequence.next.to_s).to eql "11"
    end

    it "returns Sequence instance" do
      expect(sequence.next).to be_an_instance_of(Sequence)
    end

    it "generates next state 2 times" do
      expect(sequence.next.next.to_s).to eql "21"
    end

    it "generates next state 3 times" do
      expect(sequence.next.next.next.to_s).to eql "1211"
    end
  end
end
