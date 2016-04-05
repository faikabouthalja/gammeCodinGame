STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# game loop
loop do
max=0
j=0 
i=0
 8.times do 
     mountain_h = gets.to_i # represents the height of one mountain, from 9 to 0.
        if max < mountain_h
            max=mountain_h
           j=i
        end
        i=i+1
    end
       puts j
        
    
end
