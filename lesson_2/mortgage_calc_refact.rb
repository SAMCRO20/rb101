# mortgage_calc_refact.rb

require 'yaml'
MESSAGES = YAML.load_file('mortgage_calc_refact.yml')

YES_OR_NO = ['y', 'n', 'yes', 'no']

def messages(message)
  MESSAGES[message]
end

def prompt(key)
  message = messages(key)

  puts ">> #{message}"
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
    number.to_i > 0
end

clear_screen

prompt(:welcome)
prompt(:name)
user_name = gets.chomp

until valid_name?(user_name)
  clear_screen

  prompt(:valid_name)
  user_name = gets.chomp
end

clear_screen

puts ">> Okay, #{user_name}!"
prompt(:getting_started)
sleep 1

loop do
  prompt(:loan_amount)
  print("$ ")
  loan_amount = gets.chomp

  until valid_number?(loan_amount)
    prompt(:valid_loan_amount)
    print("$ ")

    loan_amount = gets.chomp
  end

  prompt(:loan_duration)
  loan_duration_in_years = gets.chomp

  until valid_number?(loan_duration_in_years)
    prompt(:valid_loan_duration)

    loan_duration_in_years = gets.chomp
  end

  prompt(:apr)
  yearly_apr_as_percent = gets.chomp

  until valid_number?(yearly_apr_as_percent)
    prompt(:valid_apr)

    yearly_apr_as_percent = gets.chomp
  end

  duration_in_months = loan_duration_in_years.to_f * 12
  monthly_apr = yearly_apr_as_percent.to_f / 100 / 12

  monthly_payment = loan_amount.to_i *
                    (monthly_apr / \
                    (1 - (1 + monthly_apr)**(-duration_in_months)))

  wait_string = "Well, #{user_name}, allow me to compute a $#{format('%.2f', loan_amount)} "\
                  "loan at #{yearly_apr_as_percent}% APR over #{loan_duration_in_years} years."
  puts ">> #{wait_string}"

  sleep 1
  puts " ."
  sleep 1
  puts " ."

  output_string = "You're monthly payment would be $#{format('%.2f', monthly_payment)}."
  puts ">> #{output_string}"
  sleep 1
  puts("-----------------------------------------")

  prompt(:again)
  repeat_calculation = gets.chomp.downcase

  until YES_OR_NO.include?(repeat_calculation)
    clear_screen

    puts ">> #{output_string}"
    puts("-----------------------------------------")
    prompt(:valid_again)
    repeat_calculation = gets.chomp.downcase
  end

  clear_screen

  break if repeat_calculation.start_with?('n')
end

puts "Thank you for using the Mortgage Calculator. Goodbye, #{user_name}!"
