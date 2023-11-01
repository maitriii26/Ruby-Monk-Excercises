#example: 1
def add(a_number,another_number)
    a_number + another_number
end
p add(10,20)

#example: 2
def add_3(a,b,c)
    a + b + c
end
p add_3(10,20,50)

#example: 3
def add_default(x,y,z=0)
    x + y + z
end
p add_default(20,30)

#example: 4
def say_hello(name="R")
    "Hello, #{name}"
end
p say_hello("RK")

#example: 5
def add(*numbers)
    numbers.inject(0){|sum,number| sum + number}    
end
p add(1)
p add(1,2)
p add(1,2,3)
p add(1,2,3,4)

#example: 6
def add(a_number,another_number,yet_another_number)
    a_number + another_number + yet_another_number
end
numbers_to_add = [10,2,3]
p add(*numbers_to_add)

#example: 7
def addition(*n)
    n.inject(0){|sum,n| sum + n}
end
def add_with_message(message,*n)
    "#{message} : #{addition(*n)}"
end
p add_with_message("The sum is",20,30,50)

#example: 8
def introduction(age,gender,*names)
    "Hello, meet #{names.join(" ")}, who's: #{age} and #{gender}"
end
p introduction(25,"male","Rutvik")
p introduction(25,"male","Rutvik","Vyas")

#example: 9
def calculate(operant,*nums)
    nums.map do |num|
        mult = operant * num
        "#{operant} * #{num} = #{mult}"
    end
end
p calculate(2,2,3,4)

#example: 10
def adds(aa_number,an_number,options = {})
    sum = aa_number + an_number
    sum = sum.abs if options[:absolute]
    sum = sum.round(options[:precision]) if options[:round]
end
puts adds(1.0134,-5.568)
puts adds(1.0134,-5.568, absolute: true)
puts adds(1.0134,-5.568, absolute: true, round: true, precision: 2)