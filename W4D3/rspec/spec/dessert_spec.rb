require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef",name: ("michelle")) }
  let(:candy) {Desset.new("candy",10,chef)}

  describe "#initialize" do
    it "sets a type"
      expect(candy.type).to eq("candy")
    end

    it "sets a quantity"
      expect(candy.quantity).to eq(10)
    end

    it "starts ingredients as an empty array"
      expect(candy.ingredient).to be_empty
    end

    it "raises an argument error when given a non-integer quantity"
      expect{Dessert.new("ice cream","five",chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
      candy.add_ingredient("suger")
      expect(candy.add_ingredient).to include("suger")
    end
  end

  # describe "#mix!" do
  #   it "shuffles the ingredient array"
  # end

  describe "#eat" do
    it "subtracts an amount from the quantity"
        candy.eat(5)
        expect(candy.eat).to eq(5)
    end

    it "raises an error if the amount is greater than the quantity"
      expect(candy.eat(100)).to raise_error("can't eat more than what you have")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
      expect(candy.serve).to eq("Chef michelle has made 10 candys!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
