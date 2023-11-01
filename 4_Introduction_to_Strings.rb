puts "Ruby Monk"
puts 'Hello'
print "World\n"
puts "Hello World".length

a=1
b=4
puts "The number #{a} is less than number #{b}"

def string_length_interpolator(incoming_string)
    "The string you just gave me has a length of #{incoming_string.length}"
end
puts string_length_interpolator("My name is Rutvik")

puts "Hey! How are you?".include?"How"  

puts "Ruby is a beautiful language".start_with?"Ruby"

puts "I can't work with any other language but Ruby".end_with?"Ruby"

puts "My name is Rutvik".index"R"

puts "i am in lowercase".upcase

puts "This TeXt is IN MIXed CaSE".downcase

puts "lET's sWAP THE cASE".swapcase

puts "Fear is the path to the dark side".split(' ')

puts "Rutvik" + "Vyas"

puts "Ruby".concat"Monk"

puts "Rutvik" << "Vyas"

puts "I should look into your problem when I get time".sub("I","We")

puts "I should look into your problem when I get time".gsub("I","We")

puts "RubyMonk".gsub(/[aeiou]/,"1")

puts "RubyMonk is Pretty Brilliant".gsub(/[A-Z]/,"0")

puts "RubyMonk is Pretty Brilliant".match(/ ./)

puts "RubyMonk is Pretty Brilliant".match(/ ./,9)