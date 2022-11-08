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
end