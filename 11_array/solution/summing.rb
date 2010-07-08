module Summing
  def sum
    # Extra credit: There is a more compact way to accumulate a value
    # with the inject method.  Look it up and try it.
    s = 0
    self.each do |val|
      s += val
    end
    s
  end
end
