#example: 1
=begin
  
end

require "benchmark"

def calculation_using_lambda(a, b, operation)
    operation.call(a, b)
end

def calculation_using_yield(a, b)
    yield(a, b)
end

Benchmark.bm(10) do |report|
    
    report.report("explicit") do
        addition =  lambda{|a, b| a + b}
        1000.times {calculation_using_lambda(5, 5, addition)}
    end
    
    report.report("implicit") do
        1000.times {calculation_using_yield(5, 5){|a, b| a + b}}
    end
end
=end

#example: 2
def pretty(a, b)
    "The result is #{yield(a, b)}"
end

puts pretty(15, 15) {|a, b| a + b}

#example: 3
def calculation(a, b, &block)
    block.call(a, b)
end

puts calculation(5, 5){|a, b| a + b}

def calculate(a, b)
    yield(a, b)
end

addition = lambda {|x, y| x + y}
puts calculate(5, 5, &addition)

#example: 4
def filter(array,&block)
    array.select(&block)
end
print filter([1,2,3,4,5]){|n| n > 2}

filter = lambda do |array, &block|
    array.select(&block)
end
print filter([1,2,3,4,5]){|n| n < 3}

print "\n"

#example: 5
add = lambda {|m, n| m + n}
puts add.call(5,5)

add = lambda {|a, b|
a + b
}
puts add.call(5,10)

add = lambda do |a, b|
    a + b
end
puts add.call(5,15)

add = lambda do |a, b|; a + b; end
puts add.call(5,20)