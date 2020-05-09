require 'pry'

num_array = []

def prime?(num, num_array)
  num = num.abs
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
  binding.pry
end

def range(num, num_array)
end

prime?(5)
