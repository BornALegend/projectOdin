def caesar_cipher(string,offset)
   string=string.to_s
   offset=offset.to_i
   
   cipher=[]
   string.each_byte do |i| 
       #capital letters
       if (i>64 && i<91)
           if (i+offset)>90
               cipher << (i+offset-26).chr
           else
               cipher << (i+offset).chr
           end
       elsif (i>96 && i<123)
            if (i+offset)>122
                cipher << (i+offset-26).chr
            else
                cipher << (i+offset).chr
            end
        else
            cipher << i.chr
       end
    end
  cipher=cipher.join('')
  puts "The encrypted string is: #{cipher}"
end
puts "Enter the string you'd like to encrypt"
string=gets.chomp
puts "Enter the offset you'd like to use"
offset=gets.chomp
caesar_cipher(string,offset)