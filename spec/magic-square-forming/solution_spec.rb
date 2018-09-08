require_relative '../../lib/magic-square-forming/solution.rb'

describe Solution do
  it 'finds minimum forming cost' do
    expect(Solution.new.formingMagicSquare([[8, 3, 1], [1, 5, 9], [6, 7, 2]])).to eq(3)
  end

  it 'recognizes magic square' do
    expect(Solution.new.magic_square?([8, 3, 4, 1, 5, 9, 6, 7, 2])).to be(true)
    expect(Solution.new.magic_square?([8, 3, 4, 1, 5, 1, 6, 7, 2])).to be(false)
  end
end