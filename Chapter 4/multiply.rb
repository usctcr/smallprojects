my_numbers = [1, 4, 3, 7, 2, 6]

def multiply_nums(numarray, value)
mult_nums = []
counter = 0

  loop do
    break if counter == numarray.size
    
    current_number = numarray[counter]
    mult_nums << current_number*3
    
    counter += 1
  end
  p mult_nums
end


multiply_nums(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]