
#Binary Search in Ruby

class Binary
    def initialize
        @key
        @array=[]
        @n
    end    
    def reading()
        puts "Enter the element to be found"
        @key = gets.chomp.to_i
        puts "Enter the length of the array"
        @n= gets.chomp.to_i
        
        puts "Enter the elements of the array"
        
        for i in 0..@n-1 do
            @array[i]=gets.chomp.to_i
        end
    
    end
        
    def search
        first=0
        last= @n
        mid=0
        while first<last do
            
           mid= (first+last)/2
           if(@array[mid]==@key)
               puts "Found"
               return
           elsif(@array[mid]<@key)
               first= mid+1
           else
               last=mid
           end        
        end
    puts "not found"
    end
end

var=Binary.new()
var.reading()
puts var.search
