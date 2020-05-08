require 'pry'


def prime?(num)
  num = num.abs
  num_array = []
  num_array_2 = []
  if num <= 1
    false
  elsif num == 2
    true
  else
    num.times do
      num_array << num
      num -= 1
    end
    binding.pry
    num_array.shift
    num_array.pop
    num_array.each { |x|
       num_array_2 << (num / x).to_f 
     }
    if num_array_2.detect { |y| y > 0.0 }
      false
    else
      true
    end
  end
end

prime?(5)
