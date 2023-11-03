puts "A String".is_a?(String)
puts 1.is_a?(String)

def know_it(object)
    return object.class
end
puts know_it("")

puts 1.0.is_a?(Float)
puts 1.0.is_a?(Numeric)

puts 1.0.class
puts 1.0.class.superclass
puts Float.superclass

puts Float.instance_methods.count
puts (Float.instance_methods - Object.instance_methods).count
puts (Float.instance_methods - Object.instance_methods - Numeric.instance_methods).count

def is_ancestor?(klass, subclass)
    current_class = subclass
    while !current_class.superclass.nil? && current_class != klass
        current_class = current_class.superclass
    end
    current_class == klass
end
puts is_ancestor?(Numeric,Integer)