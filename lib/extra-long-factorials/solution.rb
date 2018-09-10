class Solution
  def extraLongFactorials(n)
    return 1 if n == 1
    n * extraLongFactorials(n - 1)
  end
end