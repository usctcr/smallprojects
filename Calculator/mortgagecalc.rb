def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number(num)
  num.to_i != 0
end

prompt("Welcome to the Mortgage Calculator")
prompt("To get started, we will need some basic information")

loan_amount = ' '
loop do
  prompt("First, how much is being borrowed?")
  loan_amount = gets.chomp.to_i

  if valid_number(loan_amount)
    break
  else
    prompt("That doesn't appear to be a valid number...")
  end
end

loan_years = ' '
loop do
  prompt("Next, how many years will the loan be paid over?")
  loan_years = gets.chomp.to_i

  if valid_number(loan_years)
    break
  else
    prompt("That doesn't appear to be a valid number...")
  end
end

loan_int = ' '
loop do
  prompt("Finally, what will the interest rate be?")
  prompt("For instance, 5 for 5% or 3.5 for 3.5%")
  loan_int = gets.chomp.to_f
  if valid_number(loan_int)
    break
  else
    prompt("That doesn't appear to be a valid number...")
  end
end

loan_months = loan_years * 12
annual_int = loan_int / 100
monthly_int = annual_int / 12

mortgage_payment = loan_amount * (monthly_int / (1 - (1 + monthly_int)**(-loan_months)))

puts "Your monthly mortgage payment will be $#{format('%02.2f', mortgage_payment)}"