YES_OR_NO = %w(y n yes no)

def clear_screen
  system('clear')
end

def prompt(string)
  puts ">> #{string}"
end

def valid_number?(input)
  !input.nil? && input > 0
end

def valid_operation?(operation)
  !operation.nil? && (operation == 's' || operation == 'p')
end

clear_screen

loop do
  prompt("Please enter an integer greater than 0:")
  number = gets.chomp.to_i
  
  until valid_number?(number)
    clear_screen
  
    prompt("It looks like you didn't enter a valid number.\n" \
           "Please enter an integer greater than 0:")
    number = gets.chomp.to_i
  end
  
  clear_screen
  
  prompt("Enter 's' to compute the sum, 'p' to compute the product:")
  operation = gets.chomp.downcase
  
  until valid_operation?(operation)
    clear_screen
  
    prompt("It looks like you didn't enter a valid operation.\n" \
           "Enter 's' to compute the sum, 'p' to compute the product:")
    operation = gets.chomp
  end
  
  clear_screen
  
  prompt("Allow me to compute your decisions...")
  sleep(1)
  
  clear_screen
  
  sum_of_integers = 1.upto(number).reduce(:+)
  product_of_integers = 1.upto(number).reduce(:*)
  
  case 
  when operation == "s"
    puts "The sum of the integers between 1 and #{number} is #{sum_of_integers}."
  when operation == "p"
    puts "The product of the integers between 1 and #{number} is #{product_of_integers}.\n" \
         "Interestingly enough, this is actually #{number}! (The factorial of #{number})."
  end
  sleep(1)
  puts "------------------------------------------------"
  
  prompt("Would you like to perform another calculation? [y/n]")
  repeat_calculation = gets.chomp.downcase
  
  until YES_OR_NO.include?(repeat_calculation)
    clear_screen
  
    puts "------------------------------------------------"
    prompt("It seems you didn't give a vaild response.\n" \
          "Would you like to perform another calculation? [y/n]")
    repeat_calculation = gets.chomp.downcase
  end
  
  clear_screen
  
  break if repeat_calculation.start_with?('n')
end