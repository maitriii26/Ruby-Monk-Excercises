#example: 1
puts 5 + 6

#eample: 2
a = 5
b = 6
puts a + b

#example: 3
addition = lambda {|a,b| return a + b}
puts addition.call(5,6)

#example: 4
empty_block = lambda {}
puts empty_block.object_id
puts empty_block.class
puts empty_block.class.superclass

#example: 5
class Calculator
    def add(a,b)
        return a + b
    end
end
puts Calculator.new.add(5,10)

#example: 6
addition = lambda {|a, b| return a + b}
subtraction = lambda {|a, b| return a - b}
multiplication = lambda{|a, b| return a * b}
division = lambda {|a, b| return a / b}

puts addition.call(10,20)
puts subtraction.call(20,10)
puts multiplication.call(3,5)
puts division.call(20,4)

#example: 7
def calculation(a, b, operation)
    operation.call(a, b)
end

puts calculation(5,6, lambda{|a, b| a + b})
puts calculation(5,4, lambda{|a, b| a - b})

#example: 8
def calculation(a, b)
    yield(a, b)
end

puts calculation(10,5){|a, b| a + b}
puts calculation(10,5){|a, b| a - b}


#example: 9
def foo
    yield
end
foo {puts "Hey"}

#example: 10
def foo
    puts yield
    puts method(:foo)
    puts method(:yield)
end
   
   foo { "I expect to be heard." }

   #example: 11
def foo
    yield is block_given?
end
  
foo.call