#example: 1
l = lambda {"Do or Do not"}
puts l.call

#example: 2
l = lambda do |string|
    if string == "try"
        return "There's no such thing"
    else
        return "Do or Do not"
    end
end
puts l.call("try")

#example: 3
increment = lambda { |n| n + 1 }
puts increment.call(2)

#example: 4
def demonstrate_block(number)
    yield(number)
end
puts demonstrate_block(10){|number| number + 1}

#example: 5
def calculate(a,b,c)
    yield(a,b,c)
end
puts calculate(10,20,30){|a,b,c| a + b + c}