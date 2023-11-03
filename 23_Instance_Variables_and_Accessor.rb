#example: 1
class Appliances
    def initialize(quantity,price)
        @quantity = quantity
        @price = price
    end

    def show
        puts "We need #{@quantity} frigde for our office"
        puts "Which will approximately cost #{@price} each"
    end
end
Appliances.new(2,20000).show

#example: 2
=begin
  
end
class Appliances
    def initialize(quantity,price,item)
        @quantity = quantity
        @price = price
        item = "fridge"
    end

    def show
        puts "We need #{@quantity} frigde for our office"
        puts "Which will approximately cost #{@price} each"
        puts item
    end
end
Appliances.new(2,20000).show

=end

#example:3
class Thing
    def initialize(name,qty)
        @name = name
        @qty = qty
    end

    def item_name
        @name
    end

    def quantity
        @qty
    end
end

i = Thing.new("Tv",2)
puts i.item_name
puts i.quantity

#example: 4
class Item
    def initialize(descr,color)
        @descr = descr
        @color = color
    end

    def description
        "The fridge has #{@descr} and #{@color} color."
    end

    def color=(new_color)
        @color = new_color
    end
end
a = Item.new("2 doors","Black")
puts a.color=("Red")
puts a.description

#example: 5
class Item
    def initialize(item_name,quantity)
        @item_name = item_name
        @quantity = quantity
    end

    def quantity=(new_quantity)
        @quantity = new_quantity
    end

    def quantity
        @quantity
    end
end
it = Item.new("TV",2)
puts it.quantity=(3)
puts it.quantity
