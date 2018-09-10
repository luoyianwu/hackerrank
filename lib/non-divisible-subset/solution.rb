require 'byebug'

class Solution
  def non_divisible_subset(k, s)
    return 1 if k == 1
    res = 0
    h = Hash.new(0)

    for i in 0...s.length do
      remainder = s[i] % k
      h[remainder] += 1
    end
    h[0] = 1 if h[0] > 1
    h[k / 2] = 1 if k % 2 == 0 && h[k / 2] > 1
    h.each_key {|key|
      res += [h[key], h[k - key].nil? ? 0 : h[k - key]].max
      h.delete(key)
      h.delete(k - key)
    }
    res
  end
end
