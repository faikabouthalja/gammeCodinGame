n = gets.to_i # the number of temperatures to analyse
 
if n == 0
    puts "0"
else
    temps_array = []
    temps = gets.chomp # the N temperatures expressed as integers ranging from -273 to 5526
    temps_array = temps.split(" ").map {|x| x.to_i}
    min=5526
 
    for i in temps_array do # on cherche la valeur la plus proche de 0
       if i.abs < min.abs
           min = i
      end
    end
    if temps_array.include? min.abs # si la valeur absolue  du minimum extrait existe dans le tableau on prend la valeur positive
              min=min.abs
     end
     puts min
end

