#example: 1
module Exercise
    def warmup
        puts "I completed my Warm Up"
    end
end

class Gym
    include Exercise
    
    def pushups
        puts "I did PushUps"
    end
end

class Sports
    include Exercise
    
    def cardio
        puts "I did Cardio"
    end
end

a = Gym.new
b = Sports.new
puts a.warmup
puts a.pushups
puts b.warmup
puts b.cardio

#example: 2
module Perimeter
    
    def perimeter
        sides.inject(0){|sum,side| sum + side}
    end
end

class Rectangle
    include Perimeter

    def initialize(length,width)
        @length = length
        @width = width
    end

    def sides
        [@length,@width,@length,@width]
    end
end

class Square
    include Perimeter

    def initialize(side)
        @side = side
    end

    def sides
        [@side,@side,@side,@side]
    end
end

r = Rectangle.new(20,30)
s = Square.new(20)
puts r.perimeter
puts s.perimeter
