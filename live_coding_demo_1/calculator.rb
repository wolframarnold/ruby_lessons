class Calculator
  def add(*args)
    sum = 0
#    puts args
#    puts args.inspect
    args.flatten!
    (args).each do |val|
      sum += val
    end
    sum
  end
  def name
    "I'm a calculator"
  end
end
