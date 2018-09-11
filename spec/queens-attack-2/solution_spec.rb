require_relative '../../lib/queens-attack-2/solution.rb'

describe 'available_space_in_direction' do
	before(:example) do
		@s = Solution.new
	end

	context 'with no obstacles' do
		it 'finds the number of free spaces in one direction' do
			expect(@s.available_space_in_direction(4, [-1, -1], [3, 3], [])).to eq(3)
		end
	end

	context 'with obstacles' do
		it 'finds the number of free spaces in one direction' do
			expect(@s.available_space_in_direction(4, [-1, -1], [3, 3], [[2, 2]])).to eq(1)
		end
	end
end

describe 'queens_attack' do
	before(:example) do
		@s = Solution.new
	end

	context 'with no obstacles' do
		it 'finds the total number of free spaces' do
			expect(@s.queens_attack(8, 0, 5, 4, [])).to eq(27)
		end
	end

	context 'with obstacles' do
		it 'finds the total number of free spaces' do
			expect(@s.queens_attack(5, 3, 4, 3, [[5, 5], [4, 2], [2, 3]])).to eq(10)
		end
	end
end
