
=begin

loop do
  monk.meditate
  break if monk.nirvana?
end

=end

class Bell

    def ring(n)
        n.times do
            puts "Ting..Ding.." 
        end
    end
end

Bell.new.ring(10)
