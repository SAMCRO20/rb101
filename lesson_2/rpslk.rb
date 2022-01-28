# rpslk.rb
# bonus features

require'pry-byebug'

RESPONSES = { r: 'rock', p: 'paper', s: 'scissors', l: 'lizard', k: 'Spock' }
WINNING_MOVES = { rock: %w(paper Spock),
                  paper: %w(scissor lizard),
                  scissors: %w(rock Spock),
                  lizard: %w(rock paper),
                  Spock: %w(lizard paper) } # values beat key
WINS_PER_ROUND = 3
RULES = <<~MSG
                            Welcome to RPSLK!                

              - You will choose an option from the following:
                   [Rock, Paper, Scissors, Lizard, Spock]
              - The computer will then make their choice.
              - Winner is based on WIN RULES below:

                               WIN RULES:
              --------------------------------------------
                Rock: smashes Scissors - crushes Lizard
                Paper: covers Rock - refutes Spock
                Scissors: cuts Paper - decapitates Lizard
                Lizard: eats Paper - poisons Spock
                Spock: vaporizes Rock - smashes Scissors

              - Can you get to #{WINS_PER_ROUND} wins before the computer?

MSG

# add winning_move with key as winner choice and how it wins - eventually

def prompt(message)
  puts ">> #{message}"
end

def clear_screen
  system 'clear'
end

def get_player_choice
  loop do
    prompt("Choose one:") 
    RESPONSES.each { |abbr, response| puts "\t#{abbr} => #{response}" }
    player_choice = gets.chomp.to_sym

    if RESPONSES.keys.include?(player_choice)
      return player_choice
    else
      clear_screen
      prompt("#{player_choice} is not a valid choice.")
    end
  end
end

def results(player, computer, score)
  if player == computer
    prompt("It's a tie")
  elsif WINNING_MOVES[RESPONSES[player].to_sym].include?(RESPONSES[computer])
    scores[:computer] += 1
    prompt("Computer wins")
  else
    scores[:player] += 1
    prompt("You win")
  end
end

def display_results(player, comuter, outcome, score)
  prompt("You choce #{RESPONSES[player]}. The computer chose #{RESPONSES[comuter]}.")
  prompt(outcome)
  puts <<~MSG
              -------------------------------------
              SCORE: PLAYER: [#{scores[:player]}] COMPUTER: [#{scores[:computer]}]
              -------------------------------------
  MSG
end

def display_grand_winner(scores)
  if scores[:player] >= WINS_PER_ROUND
    prompt("You are the champion! First to #{WINS_PER_ROUND} wins.")
  elsif scores[:computer] >= WINS_PER_ROUND
    prompt("The computer is the champion! First to #{WINS_PER_ROUND} wins.")
  end
end

def play_again?
  loop do
    prompt("Would you like to play again? Y/N")
    again = gets.chomp
    if again.downcase == 'y'
      return true
    elsif again.downcase == 'n'
      return false
    else
      prompt("#{again} is not a valid choice...")
      sleep 1
      prompt("Would you like to play again? Y/N")
    end
  end
end

# clear_screen
puts "#{RULES}"

program_end = false

until program_end == true

  scores = { player: 0, computer: 0 }

  loop do
    # binding.pry
    player_choice = get_player_choice()
    
    computer_choice = RESPONSES.keys.sample
    
    outcome = results(player_choice, computer_choice, scores)
    
    display_results(player_choice, computer_choice, outcome, scores)
    
    prompt('Enter to continue')
    gets
    clear_screen
    
    if scores.values.max == WINS_PER_ROUND
      display_grand_winner(scores)
      break
    end
  end

  program_end = true unless play_again?
  clear_screen
end