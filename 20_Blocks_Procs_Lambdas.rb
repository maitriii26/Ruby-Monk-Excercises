#example: 1
puts lambda {}
puts Proc.new {}

#example: 2
def a_method
    lambda { return "We just returned from the Block"}.call
    return "We just returned from the calling method"
end
puts a_method

#example: 3
def b_method
    Proc.new { return "We just returned from the Block"}.call
    return "We just returned from the calling method"
end
puts b_method

#example: 4
short = ->(a, b){a + b}
puts short.call(2,3)

long = lambda{|a, b| a + b}
puts long.call(2,3)

#example: 5
short = proc {|a, b| a + b}
puts short.call(22,33)

long = Proc.new{|a ,b| a + b}
puts long.call(22,33)