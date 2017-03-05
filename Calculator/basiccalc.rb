puts 'Enter first number'
firstnum = gets.chomp.to_i
puts 'Enter second number'
secnum = gets.chomp.to_i
puts 'Add, Subtract, Multiply, or Divide?'
typecalc = gets.chomp.downcase

if typecalc == 'add'
  mathres = firstnum + secnum
elsif typecalc == 'subtract'
  mathres = firstnum - secnum
elsif typecalc == 'multiply'
  mathres = firstnum * secnum
elsif typecalc == 'divide'
  mathres = firstnum / secnum
else
  puts 'Invalid Entry!'
end

puts 'Your solution is ' + mathres.to_s