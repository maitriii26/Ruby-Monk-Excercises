#example: 1
puts [1,2] == [1,2]
puts [1,2] == [1,3]
puts "a" == "xyz"

#example: 2
class Item
    attr_reader :item_name, :quantity

    def initialize(item_name,quantity)
        @item_name = item_name
        @quantity = quantity
    end

    def to_s
        "Item #{@item_name} : #{@quantity}"
    end
    
    def ==(other_item)
        return false unless other_item.is_a?(Item)
        @item_name == other_item.item_name && @quantity == other_item.quantity
    end
end

p Item.new("abc",1) == Item.new("abc",1)
p Item.new("abc",2) == Item.new("abcd",1)