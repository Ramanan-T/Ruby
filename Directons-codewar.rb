=begin
Question:
You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block for each letter (direction) and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

Link: https://www.codewars.com/kata/54da539698b8a2ad76000228/train/ruby
=end


def is_valid_walk(walk)
    #your code here
    value1=0
    value2=0
    if walk.length == 10
      for i in 0..9 do 
        if walk[i]=='n'
          value1+=1
        elsif walk[i]=='s'
          value1-=1
        elsif walk[i]=='e'
          value2+=1
        elsif walk[i]=='w'
          value2-=1
        end
      end
    if value1==0 and value2==0 and walk.length==10
        return true
    end
    else 
      return false
      
    end
    return false
  end
