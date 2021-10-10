VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
     (player == 'rock' && computer == 'lizard') ||
     (player == 'paper' && computer == 'rock') ||
     (player == 'paper' && computer == 'spock') ||
     (player == 'scissors' && computer == 'paper') ||
     (player == 'scissors' && computer == 'lizard') ||
     (player == 'lizard' && computer == 'spock') ||
     (player == 'lizard' && computer == 'paper') ||
     (player == 'spock' && computer == 'rock') ||
     (player == 'spock' && computer == 'scissors')
    prompt("You won!")
  elsif (player == 'rock' && computer == 'paper') ||
        (player == 'spock' && computer == 'paper') ||
        (player == 'lizard' && computer == 'scissors') ||
        (player == 'paper' && computer == 'scissors') ||
        (player == 'scissors' && computer == 'rock') ||
        (player == 'lizard' && computer == 'rock') ||
        (player == 'spock' && computer == 'lizard') ||
        (player == 'paper' && computer == 'lizard') ||
        (player == 'rock' && computer == 'spock') ||
        (player == 'scissors' && computer == 'spock')
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}. Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
