class Machine

  # Solution 1
#  def do_something(num = 1)
#    num.times do
#      yield
#    end
#  end

  # Solution 2
  def do_something(n=1)
    res = yield while (n-=1) >= 0
    res
  end

end

