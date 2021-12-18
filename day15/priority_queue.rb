class PriorityQueue
  attr_reader :q

  def initialize
    @q = []
  end

  def <<(e)
    i = 0
    @q.each do |x|
      break if x[1] > e[1]
      i += 1
    end
    @q.insert(i, e)
  end

  def pop
    e = @q.shift
    e.nil? ? e : e[0]
  end
end
