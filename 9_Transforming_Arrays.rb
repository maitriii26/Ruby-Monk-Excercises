print [1,2,3,4,5].map {|i| i+1}

print "\n"

print [1,2,3,4,5].map {|i| i*3}

print "\n"

#select even numbers
print [1,2,3,4,5,6,7,8].select{|n| n % 2 == 0}

print "\n"

print ["Rock","Paper","Scissors","lizzard","sock"].select{|a| a.length >= 5}

print "\n"

array = [1,2,3,4,5,6,7,8]
array.delete(5)
print array

print "\n"

print [1,2,3,4,5,6,7].delete_if{|i| i > 4}

print "\n"

print [1,2,3,4,5,6,7,8,9].delete_if{|i| i % 2 == 0}

print "\n"

array = [1, 2, 3, 4, 5]
for i in array
  puts i + 1
end

print"\n"

def array_copy(source)
    destination = []
    for num in source
        destination << num if num < 5
    end
    return destination
end
source = [1,2,3,4,5,6,7,8]
destination = array_copy(source)
print destination.inspect

print"\n"

arr = [1,2,3,4,5]
arr.each do |i|
    puts i * i
end

print "\n"

def arr_copy(scr)
    dest = []
    scr.each do |i|
      dest << i if i > 4
    end
    return dest
  end
  scr = [1,2,3,4,5,6,7]
  dest = arr_copy(scr)
  print dest.inspect