require 'fizzbuzz'

RSpec.describe 'FizzBuzz' do
  context "Knows when a number IS divisible" do
    it "by three" do
      expect(is_divisible_by_three?(3)).to eq(true)
      expect(is_divisible_by_three?(36)).to eq(true)
      expect(is_divisible_by_three?(93)).to eq(true)
    end
    it "by five" do
      expect(is_divisible_by_five?(5)).to eq(true)
      expect(is_divisible_by_five?(35)).to eq(true)
      expect(is_divisible_by_five?(90)).to eq(true)
    end
  end
  context "Knows when a number IS NOT divisible" do
    it "by three" do
      expect(is_divisible_by_three?(5)).to eq(false)
      expect(is_divisible_by_three?(52)).to eq(false)
      expect(is_divisible_by_three?(7)).to eq(false)
      expect(is_divisible_by_three?(37)).to eq(false)
    end
    it "by five" do
      expect(is_divisible_by_five?(76)).to eq(false)
      expect(is_divisible_by_five?(52)).to eq(false)
      expect(is_divisible_by_five?(7)).to eq(false)
      expect(is_divisible_by_five?(37)).to eq(false)
    end
  end
  context "Given a fizzy number" do
    it "returns fizz" do
      expect(fizzbuzz(12)).to eq "fizz"
    end
  end
  context "Given a buzzy number" do
    it "returns buzz" do
      expect(fizzbuzz(20)).to eq "buzz"
    end
  end
  context "Given a fizzbuzzy number" do
    it "returns fizzbuzz" do
      expect(fizzbuzz(15)).to eq "fizzbuzz"
    end
  end
  context "Given a ordinary number" do
    it "returns the number as a string" do
      expect(fizzbuzz(16)).to eq "16"
    end
  end

  context "If not given a number" do
    it "raise an error" do
      expect { fizzbuzz("hello")}.to raise_error "ERROR: Not an integer"
    end
  end
end