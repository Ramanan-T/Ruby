# Bubble Sort in Ruby
class Linear
    def initialize
        @array=[]
        @n
    end    
    #input method 
    def reading()
        puts "Enter the length of the array"
        @n= gets.chomp.to_i
        
        puts "Enter the elements of the array"
        
        for i in 0..@n-1 do
            @array[i]=gets.to_i
        end
    
    end
   #bubble sort method   
   #run j till n-i-1  
    def search(swap)
        for i in 0..@n-1 do
            for j in 0..@n-2 do
                if (@array[j]>@array[j+1])
                    temp= @array[j]
                    @array[j]=@array[j+1]
                    @array[j+1]=temp
                end
            end
        end
        puts "Result"

        for i in 0..@n-1 do
            puts "#{@array[i]}"
        end 
        
    end 
end

obj=Linear.new()
obj.reading()
#lambda methods is not call by reference 
#Values was swapped but the @array values remained unaffected
swap = lambda do |x,y|
    temp=x;
    x=y;
    y=temp
end
puts "#{x} #{y}"
   
end
obj.search(swap)

