# rpslk.rb
# bonus features

RESPONSES = { r: 'Rock', p: 'Paper', s: 'Scissors', l: 'Lizard', k: 'Spock' }
WINNING_MOVES = { Rock: %w(Paper Spock),
                  Paper: %w(Scissors Lizard),
                  Scissors: %w(Rock Spock),
                  Lizard: %w(Rock Scissors),
                  Spock: %w(Lizard Paper) } # values beat key
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
                Scissors: cut Paper - decapitates Lizard
                Lizard: eats Paper - poisons Spock
                Spock: vaporizes Rock - smashes Scissors

              - Can you get to #{WINS_PER_ROUND} wins before the computer?

MSG
WINNING_EXPLANATION = { Rock: { Scissors: "Rock smashes Scissors.",
                                Lizard: "Rock crushes Lizard." },
                        Paper: { Rock: "Paper covers Rock.",
                                 Spock: "Paper refutes Spock." },
                        Scissors: { Paper: "Scissors cut Paper.",
                                    Lizard: "Scissors decapitate Lizard." },
                        Lizard: { Paper: "Lizard eats Paper.",
                                  Spock: "Lizard poisons Spock." },
                        Spock: { Rock: "Spock vaporizes Rock.",
                                 Scissors: "Spock smashes Scissors." } }

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
    "It's a tie"
  elsif WINNING_MOVES[RESPONSES[player].to_sym].include?(RESPONSES[computer])
    score[:computer] += 1
    "Computer wins"
  else
    score[:player] += 1
    "You win"
  end
end

def winning_explanation(player, computer, outcome)
  if outcome == "Computer wins"
    WINNING_EXPLANATION[RESPONSES[computer].to_sym][RESPONSES[player].to_sym]
  elsif outcome == "You win"
    WINNING_EXPLANATION[RESPONSES[player].to_sym][RESPONSES[computer].to_sym]
  else
    "Guess we'll have to try that again..."
  end
end

def display_results(player, computer, outcome, score)
  prompt("You chose #{RESPONSES[player]}.\
    The computer chose #{RESPONSES[computer]}.")
  prompt(winning_explanation(player, computer, outcome))
  prompt(outcome)
  puts <<~MSG
              -------------------------------------
              SCORE: PLAYER: [#{score[:player]}] COMPUTER: [#{score[:computer]}]
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
    end
  end
end

# clear_screen
puts RULES.to_s

program_end = false

until program_end == true

  scores = { player: 0, computer: 0 }

  loop do
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

puts <<~MSG
            Don't cry because it's over,
            smile because it happened.
                            -Dr. Seuss
  MSG
