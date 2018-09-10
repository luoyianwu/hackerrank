require_relative '../../lib/non-divisible-subset/solution.rb'

describe Solution do
	before(:example) do
		@s = Solution.new
	end

	context 'with k is divisible to some input' do
		it "returns the length of non_divisible" do
			expect(@s.non_divisible_subset(4, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])).to eq(5)
		end
	end

	context 'with normal input' do
		it "returns the length of non_divisible" do
			expect(@s.non_divisible_subset(7, [278, 576, 496, 727, 410, 124, 338, 149, 209, 702, 282, 718, 771, 575, 436])).to eq(11)
		end
	end

	context 'with k = 1' do
		it 'returns 1 immediately' do
			expect(@s.non_divisible_subset(1, [3, 5, 5, 5, 6])).to eq(1)
		end
	end
end
