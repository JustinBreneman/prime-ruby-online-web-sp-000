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
    num_array.shift
    num_array.pop
    num_array.each do |x|
      num_array_2 << num / x
      binding.pry
    end
  end
end
