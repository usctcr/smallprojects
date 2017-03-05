def prompt(message)
  puts "=> #{message}"
end
def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'paper' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You win!')
  elsif win?(computer, player)
    prompt('Computer wins.')
  else
    prompt('It\'s a tie!')
  end
end

VALID_CHOICES = %w(rock paper scissors)

loop do
  choice = ' '
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase
  
      if VALID_CHOICES.include?(choice)
        break
      else
        prompt('Invalid answer.')
      end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}; The computer chose #{computer_choice}.")
  display_results(choice, computer_choice)

  prompt('Do you want to play again?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Good bye.')