# Linear Search in Ruby


class Linear
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
        
        for i in 0..@n do
            @array[i]=gets.to_i
        end
    
    end
        
    def search
        for i in 0..@array.length() do
            if(@key== @array[i])
                puts "#{@key} found at #{i}"
                return
            i=i+1
            end
        end
    puts "not found"
    end
end

obj=Linear.new()
obj.reading()
puts obj.search
