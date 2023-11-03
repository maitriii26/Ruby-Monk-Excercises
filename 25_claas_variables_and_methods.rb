#example: 1
class Hello

    def initialize(a,b)
        @a = a
        @b = b
    end

    def show
        puts "Instance method show invoked for #{self}"
    end

    def to_s
        "The value is : #{@a} and #{@b}"
    end
end

Hello.new(4,5).show

#example: 2
class Item
    
    def self.show
        puts "Class method show invoked"
    end
end
    Item.show

#example: 3
class Planet
    @@planets_count = 0

    def initialize(name)
        @name = name
        @@planets_count += 1
    end

    def self.planets_count
        @@planets_count
    end
end
Planet.new("Earth")
Planet.new("Mars")
Planet.new("Venus")

p Planet.planets_count

#example: 4
class ApplicationConfiguration
    @@configs = {}

    def self.set(property_name,value)
        @@configs[property_name] = value
    end

    def self.get(property_name)
        @@configs[property_name]
    end
end

ApplicationConfiguration.set("Villa",10000)
ApplicationConfiguration.set("Flat", 5000)
ApplicationConfiguration.set("Studio", 3000)

p ApplicationConfiguration.get("Villa")

#example: 5
class RestaurantMenu
    @@menu = {}

    def self.let(name,rate)
        @@menu[name] = rate
    end

    def self.wet(name)
        @@menu[name]
    end

    def self.menu
        @@menu
    end
end

RestaurantMenu.let("Dal",200)
RestaurantMenu.let("Roti",20)
RestaurantMenu.let("Sabji",300)

p RestaurantMenu.wet("Dal")
p RestaurantMenu.menu