# mortgage_calc_refact.rb

YES_OR_NO = ['y', 'n', 'yes', 'no']

def prompt(string)
  puts ">> #{string}"
end

def clear_screen
  system('clear')
end

def valid_name?(name)
  test_name = name
  !test_name.delete(' ').empty?
end

def valid_number?(number)
  (number.to_i.to_s == number || number.to_f.to_s == number) &&
    number.to_i >= 0
end

clear_screen

prompt("Hey there! Welcome to the Mortgage Calculator!")
prompt("What is your name?")
name = gets.chomp

until valid_name?(name)
  clear_screen

  prompt("It looks like you didn't type anything. Please enter a name.")
  name = gets.chomp
end

clear_screen

prompt <<~MSG
         Welcome, #{name}. I will need to collect some information
            from you to calculate the monthly payment of your loan.
       MSG
sleep(5)

clear_screen

loop do
  prompt("What is the loan amount?")
  print("$")
  loan_amount = gets.chomp

  until valid_number?(loan_amount)
    clear_screen

    prompt("That doesn't look like a valid number." \
           " Please enter a valid loan amount.")
    print("$")
    loan_amount = gets.chomp
  end

  clear_screen

  prompt("What is your loan duration (in years)?")
  loan_duration_in_years = gets.chomp

  until valid_number?(loan_duration_in_years)
    clear_screen

    prompt("That doesn't look quite right." \
           " Please enter a valid loan duration (in years).")
    loan_duration_in_years = gets.chomp
  end

  clear_screen

  prompt <<~MSG
           What is the loan APR?
                (Examples: [1 = 1%] [5.5 = 5.5%] [9.99 = 9.99%])
        MSG
  yearly_apr_as_percent = gets.chomp

  clear_screen

  duration_in_months = loan_duration_in_years.to_f * 12
  monthly_apr = yearly_apr_as_percent.to_f / 100 / 12

  monthly_payment = loan_amount.to_i *
                    (monthly_apr / \
                    (1 - (1 + monthly_apr)**(-duration_in_months)))
  
  output_string = "The monthly payment is $#{format('%.2f', monthly_payment)}"
  prompt(output_string)
  sleep(2)
  puts("-----------------------------------------")

  prompt("Would you like to perform another calculation? [y/n]")
  repeat_calculation = gets.chomp.downcase

  until YES_OR_NO.include?(repeat_calculation)
    clear_screen

    prompt(output_string)
    puts("-----------------------------------------")
    prompt("It seems like you didn't give a valid response.\n" \
           ">> Would you like to perform another calculation? [y/n]")
    repeat_calculation = gets.chomp.downcase
  end

  clear_screen

  break if repeat_calculation.start_with?('n')
end

prompt("Thank you for using the Mortgage Calculator. Goodbye, #{name}!")
