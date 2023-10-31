def check_sign(number)
    if number>0
        "#{number} is positive"
    else
        "#{number} is negative"
    end
end
puts check_sign(-1)

def check_sign(number)
    if number>0
        "#{number} is positive"
    elsif number<0
        "#{number} is negative"
    else
        number
    end
end
puts check_sign(0)

age=17
unless age>=18
    puts "Sorry, you need to need to be 18 to get a drivers license"
end

def check_sign(num)
    num > 0 ? "#{num} is positive" : "#{num} is negative"
end
puts check_sign(10)

if 0
    puts "Hey, 0 is considered to be true in Ruby"
end