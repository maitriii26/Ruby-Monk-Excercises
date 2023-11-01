p 1.next

a = 1.method("next")
p a.call

def reverse_sign(an_integer)
  return 0 - an_integer
end
puts reverse_sign(100)
puts reverse_sign(-5)

def do_nothing
end
puts do_nothing.class

def demonstrate_early_return
    return
    puts "This line will never be executed"
end
puts demonstrate_early_return.class

def add_two(num)
    return num + 2
end
p add_two(8)