class Solution

  def available_space_in_direction(n, dir, curr, obstacle_hash)
    res = 0
    curr = curr.clone
    while [curr[0] + dir[0], curr[1] + dir[1]].none? { |pos|
      pos >= n || pos < 0
    } && !obstacle_hash.include?([curr[0] + dir[0] + 1, curr[1] + dir[1] + 1]) do
      curr[0] += dir[0]
      curr[1] += dir[1]
      res += 1
    end
    res
  end

  def queens_attack(n, k, r_q, c_q, obstacles)
    obstacle_hash = Hash.new
    for i in 0...obstacles.length do
      obstacle_hash[obstacles[i]] = true
    end
    res = 0
    curr = [r_q - 1, c_q - 1]
    dir = [[1, 0], [1, -1], [0, -1], [-1, -1], [-1, 0], [-1, 1], [0, 1], [1, 1]]

    for i in 0...dir.length
      res += available_space_in_direction(n, dir[i], curr, obstacle_hash)
    end
    res
  end
end
