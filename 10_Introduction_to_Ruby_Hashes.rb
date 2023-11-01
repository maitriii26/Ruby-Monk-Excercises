{}

student_ages = {
    "Jack" => 10,
    "Jill" => 12,
    "Bob" => 14
}
print student_ages

print "\n"

restaurant_menu = {
    "Tea" => 10,
    "Coffee" => 20,
    "Beverages" => 50
}
puts restaurant_menu["Tea"]
puts restaurant_menu["Coffee"]= 30
print restaurant_menu

print "\n"

menu = {}
menu["Dal"] = 30
menu["Roti"] = 10
menu["Sabji"] = 50
puts menu

menu.each do |item,rate|
    puts "#{item} : #{rate}"
end

menu.each do |item,rate|
    rate *= 1.2
    puts "#{item} : #{rate}"
end

menu.each do |item,rate|
    menu[item] = rate * 1.2
end
puts menu

print menu.keys
print "\n"
print menu.values

print "\n"

normal = Hash.new
was_not_there = normal[:zig]
puts "wasn't there :"
p was_not_there

usually_brown = Hash.new("brown")
pretending_to_be_there = usually_brown[:zig]
puts "pretending to be there :"
p pretending_to_be_there

usually_brown["hello"] = 5
usually_brown["hi"] = 2
puts usually_brown

game = Hash[:punch,99,:kick,95,:stop_bullets_with_hands,true]
p game

def rk
    a = [:punch,95]
    b = [:kick,99]
    c = [:stop_bullets_with_hands,false]
    key_value_pairs = [a,b,c]
    Hash[key_value_pairs]
end
p rk