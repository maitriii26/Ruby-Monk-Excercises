#example: 1
class Item
    attr_reader :item_name

    def initialize(item_name)
        @item_name = item_name
    end
end

item = Item.new("attribute reader")
p item.item_name


#example: 2
class Item
    attr_writer :item_name

    def initialize(item_name)
        @item_name = item_name
    end
end

item = Item.new("attribute writer")
p item.item_name

item.item_name = 2*2
p item.item_name