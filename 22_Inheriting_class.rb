class MyArray < Array
end

#example: 1
class Rectangle
    def initialize(length,width)
        @length = length
        @width = width
    end

    def perimeter
        2 * (@length + @width)
    end
end
puts Rectangle.new(20,30).perimeter

class Square < Rectangle
    def initialize(side)
        @length = @width = side
    end
end
puts Square.new(20).perimeter

#example: 2
class Rectangle
    def initialize(length,width)
        @length = length
        @width = width
    end

    def perimeter
        2 * (@length + @width)
    end
    def area
        @length * @width
    end
end

class Rectangle
    def perimeter
    end

    def area
    end
end
puts Rectangle.new(20,30).perimeter

#example: 3
class Array
    def map
        "in india"
    end
end

class MyArray < Array
    def map
        "in soviet russia..."
    end
end
puts Array.new.map
puts MyArray.new.map

#example: 4
class Animal
    def move    
        "It can move"
    end
end

class Bird < Animal
    def move
        super + " by flying"
    end
end

class Underwater < Animal
    def move
        super + " by swimming"
    end
end

class Human < Animal
    def move
        super + " by walking"
    end
end

class Penguin < Bird
    def move
        "It can move by swimming"
    end
end

puts Bird.new.move
puts Animal.new.move
puts Underwater.new.move
puts Human.new.move
puts Penguin.new.move