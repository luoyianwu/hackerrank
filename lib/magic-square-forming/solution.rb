class Solution
  def formingMagicSquare(s)
    s = s.flatten
    magic_squares = [[2, 7, 6, 9, 5, 1, 4, 3, 8],
                     [2, 9, 4, 7, 5, 3, 6, 1, 8],
                     [4, 3, 8, 9, 5, 1, 2, 7, 6],
                     [4, 9, 2, 3, 5, 7, 8, 1, 6],
                     [6, 1, 8, 7, 5, 3, 2, 9, 4],
                     [6, 7, 2, 1, 5, 9, 8, 3, 4],
                     [8, 1, 6, 3, 5, 7, 4, 9, 2],
                     [8, 3, 4, 1, 5, 9, 6, 7, 2]]
    lowest_cost = nil
    magic_squares.each do |m|
      cost = 0
      for i in 0...s.length do
        cost += (m[i] - s[i]).abs
      end
      lowest_cost = cost if lowest_cost.nil? || cost < lowest_cost
    end
    lowest_cost
  end

  def finding_all_magic_squares
    res = []
    [1, 2, 3, 4, 5, 6, 7, 8, 9].permutation.to_a.each do |a|
      res.push(a) if magic_square?(a)
    end
    p res
  end

  def magic_square?(a)
    return (a[0] + a[1] + a[2]) == 15 &&
           (a[3] + a[4] + a[5]) == 15 &&
           (a[6] + a[7] + a[8]) == 15 &&
           (a[0] + a[3] + a[6]) == 15 &&
           (a[1] + a[4] + a[7]) == 15 &&
           (a[2] + a[5] + a[8]) == 15 &&
           (a[0] + a[4] + a[8]) == 15 &&
           (a[2] + a[4] + a[6]) == 15
  end
end