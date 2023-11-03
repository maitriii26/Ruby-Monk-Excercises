#example: 1
module Perimeter
    class Array
        def initialize
            @size = 400
        end
    end
end
our_array = Perimeter::Array.new
ruby_array = Array.new
p our_array.class
p ruby_array.class

#example: 2
class Push
    def up
        40
    end
end
gym_push = Push.new
p gym_push.up

class Push
    def up
        30
    end
end
dojo_push = Push.new
p dojo_push.up

#example: 3
module Dojo
    A = 4
    module Kata
        B = 8
        module Roulette
            class ScopeIn
                def push
                    15
                end
            end
        end
    end
end
A=16
B=23
C=32

puts "a = #{A}"
puts "Dojo::a = #{Dojo::A}"

puts "b = #{B}"
puts "Dojo::Kata::b = #{Dojo::Kata::B}"

puts "c = #{C}"
puts "Dojo::Kata::Roulette::ScopeIn.new.push = #{Dojo::Kata::Roulette::ScopeIn.new.push}"

#example: 3
module RubyMonk
    module Parser
        class Textparser
            def self(str)
                str.upcase.split("")
            end
        end
    end
end
puts "Your return is : #{RubyMonk::Parser::Textparser.new.self("abcdef")}"

#example: 4
module Kata
    X = 100
    module Dojo
        Y = 9
        class ScopeIn
            def push
                Kata::X
            end
        end
    end
end

X = 10

puts "X = #{X}"
puts "Kata::X = #{Kata::X}"
puts "Kata::Dojo::Y = #{Kata::Dojo::Y}"
puts "Kata::Dojo::ScopeIn.new.push = #{Kata::Dojo::ScopeIn.new.push}"
