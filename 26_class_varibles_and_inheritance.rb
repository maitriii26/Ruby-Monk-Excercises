class ApplicationConfiguration
    @config = {}

    def self.set(property,value)
        @config[property] = value
    end

    def self.get(property)
        @config[property]
    end
end

class ERPApplicationConfiguration < ApplicationConfiguration
    @config = {}
end

class WebApplicationConfiguration < ApplicationConfiguration
    @config = {}
end

ApplicationConfiguration.set("name","Application Configuration")
ERPApplicationConfiguration.set("name","ERP Application")
WebApplicationConfiguration.set("name", "Web Application")

p WebApplicationConfiguration.get("name")
p ERPApplicationConfiguration.get("name")
p ApplicationConfiguration.get("name")

#example: 2
class Foo
    @foo_count = 10

    def self.incerement_counter
        @foo_count += 1
    end

    def self.current_counter
        @foo_count
    end
end

class Bar < Foo
    @foo_count = 100
end

Foo.incerement_counter
Bar.incerement_counter
Foo.incerement_counter
p Foo.current_counter
p Bar.current_counter