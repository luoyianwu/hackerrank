require_relative '../../lib/extra-long-factorials/solution.rb'

describe 'extraLongFactorials' do
	before(:example) do
		@s = Solution.new
	end

	context 'when n = 1' do
		it 'finds correct result' do
			expect(@s.extraLongFactorials(1)).to eq(1)
		end
	end

	context 'when n > 1' do
		it 'finds correct result' do
			expect(@s.extraLongFactorials(25)).to eq(15511210043330985984000000)
		end
	end
end
