STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@road = gets.to_i # the length of the road before the gap.
@gap = gets.to_i # the length of the gap.
@platform = gets.to_i # the length of the landing platform.

# game loop
loop do
    speed = gets.to_i # the motorbike's speed.
    coord_x = gets.to_i # the position on the road of the motorbike.
    if coord_x > @road #la moto dépasse le trou
        puts "SLOW" #ralentir
    elsif coord_x+speed > @road # la moto atteint le trou
            puts "JUMP"
    else # avant d'arriver au trou
        if speed<= @gap # avant d'arriver au trou
            puts "SPEED"
        elsif  speed > @gap+1 # des que la moto dépasse le trou
            puts "SLOW"
        else 
            puts "WAIT"
        end
    end
    
       #puts "SPEED" # A single line containing one of 4 keywords: SPEED, SLOW, JUMP, WAIT.
end
