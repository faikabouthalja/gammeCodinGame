uto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@message = gets.chomp

tab=[]
chaine=""
arr=[]
k=0
tab=@message.split("").map{|x| x}
while k < tab.length do
    
ch=tab[k].unpack("B*")[0]
array = ch.split("").map{|x| x.to_i}
array=array.drop(1)
arr=arr.concat(array)
k=k+1
end


binairefin=""
resultat=""
chaine=@message.split("")
for car in chaine do 
   binaire=car.unpack("B*")[0].to_s
  binaire=binaire.strip
    array=binaire.split("").map {|x| x.to_s}
    for i in 1..array.length do 
       binairefin=binairefin.concat(array[i].to_s)
   end
end 
 arrayfin=binairefin.split("").map {|x| x.to_s}
# puts arrayfin 
i=0
j=0 
while i < arrayfin.length do
    if arrayfin[i]=="1"#elmnt numi =1
        resultat=resultat.concat"0 0"
        j=j+1 
        while arrayfin[j]=="1"
            resultat=resultat.concat"0"
             j=j+1
        end  
           
    end  
    if arrayfin[i]=="0"
        resultat=resultat.concat"00 0"
         j=j+1 
         while arrayfin[j]=="0"
            resultat=resultat.concat"0"
            j=j+1 
         end
       
     end
 resultat=resultat.concat" "
          i=j
end
resultat=resultat.strip
  puts resultat
  
