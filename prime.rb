require 'pry'

num_array = []
num_array_2 = []

def prime?(num)
  num = num.abs
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
    new_num = (num_array.detect { |x| num % x != 0 })
    if new_num == nil
      true
    else
      false
    end
  end
end
