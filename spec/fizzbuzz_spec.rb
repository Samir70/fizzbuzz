require 'fizzbuzz'

RSpec.describe 'FizzBuzz' do
  context "Knows when a number IS divisible" do
    it "by three" do
      expect(is_divisible_by_three?(3)).to eq(true)
    end
  end
end