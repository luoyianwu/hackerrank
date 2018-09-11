class Solution
  def climbing_leaderboard(scores, alice)
    res = []
    alice_index = 0
    scores_index = scores.length - 1
    scores = scores.uniq

    alice.each do |a|
      ranking = scores.bsearch_index {|x| x <= a }
      ranking = scores.length if ranking.nil?
      res << ranking + 1
    end
    res
  end
end