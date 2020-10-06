class Statistics
  def initialize(array)
    @data = array
  end

  def max
    @data.max
  end

  def min
    @data.min
  end

  def avg
    (@data.inject { |sum, a| sum + a }.to_f / @data.size).round(2)
  end

  def c_s_var
    avg = self.avg
    sum = @data.map { |a| (a - avg)**2 }
    (sum.inject(:+) / (sum.size - 1)).round(2)
  end
end
