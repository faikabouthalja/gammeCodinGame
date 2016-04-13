@n = gets.to_i # Number of elements which make up the association table.
@q = gets.to_i # Number Q of file names to be analyzed.

extt="NO "
mtt="UNKNOWN "
@n.times do
     ext, mt = gets.split(" ")
     extt=extt.concat(ext)
     mtt=mtt.concat(mt) 
     extt=extt.concat(" ")
     mtt=mtt.concat(" ") 
     
   end
          
extenArray=extt.upcase!.split(' ')
mimeArray=mtt.split(' ')
 
extensions="" 
@q.times do
    fname = gets.chomp # One file name per line.
    namefich=fname.split('')
    l=namefich.length
    if !fname.include? "."   
         fname="mmmm.NO"
     end
      
     if namefich[l-1] == "."
         fname="mmmm.NO"
             
     end 
         array1 = fname.split('.')
         extensions=extensions.concat(array1[array1.length-1].to_s)
         extensions=extensions.concat(" ")
    
end
fichext=extensions.upcase!.split(' ')  
res=""
 for i in 0..fichext.length
 trouve=false
 for j in 0..extenArray.length
        if fichext[i]==extenArray[j]
            res=res.concat(mimeArray[j].to_s)
            trouve=true
         end
   end
    
 
 if trouve==false  
             res=res.concat" UNKNOWN"
             
         end
         res=res.concat" "
 end
 resul=res.split(' ')
 puts resul
