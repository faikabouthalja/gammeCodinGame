STDOUT.sync = true # DO NOT REMOVE
@light_x, @light_y, @initial_tx, @initial_ty = gets.split(" ").collect {|x| x.to_i}
thor_x = @initial_tx
thor_y = @initial_ty
# game loop
loop do
    remaining_turns = gets.to_i # The remaining amount of turns Thor can move. Do not remove this line.
    tX=""
    tY=""
    if thor_x < @light_x
        tX = "E"
        thor_x = thor_x+1
    elsif thor_x > @light_x
        tX = "W"
        thor_x = thor_x-1
    end
    if thor_y < @light_y
        tY = "S"
        thor_y = thor_y+1
    elsif thor_y > @light_y
        tY="N"
        thor_y=thor_y-1
    end

       puts tY.concat(tX) # A single line providing the move to be made: N NE E SE S SW W or NW
end
