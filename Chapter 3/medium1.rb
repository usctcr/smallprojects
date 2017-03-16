10.times {|num| puts (" " * num) + "The Flinstones Rock"}
puts "---------------"
puts "The value of 40 + 2 is " + (40+2).to_s
puts "---------------"

def fib(first_num, second_num)
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"