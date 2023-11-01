class Rectangle

    def initialize(length,breadth,height)
      @length = length
      @breadth = breadth
      @height = height
    end

    def perimeter
      puts 2 * (@length + @breadth)
    end

    def area
      puts @length * @breadth
    end

    def volume
      puts @length * @breadth * @height
    end
end

a = Rectangle.new(20,30,10)
puts a.perimeter
puts a.area
puts a.volume