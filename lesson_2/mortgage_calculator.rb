# loan calculator
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(input)
  input.to_f() <= 0 || input.empty?()
end

# Welcome
prompt("Welcome to the Mortgage Calculator")
prompt("-------------------------------")
prompt("Please enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Please enter a valid name.")
  else
    break
  end
end

loop do # main loop
  # Get loan amount
  prompt("How much would you like to borrow for you loan?")

  loan_amount = ''
  loop do
    loan_amount = Kernel.gets().chomp()

    if valid_number?(loan_amount)
      prompt("Must enter a positive number.")
    else
      break
    end
  end

  # Get interest rate
  prompt("What is the Annual Percentage Rate(APR)?")
  prompt("(Example: 5 for 5% or 2.5 for 2.5%)")

  interest_rate = ''
  loop do
    interest_rate = Kernel.gets().chomp()

    if valid_number?(interest_rate)
      prompt("Must enter a positive number.")
    else
      break
    end
  end

  # Get load duration
  prompt("How long is the duration of your loan (in years)?")

  loan_duration = ""
  loop do
    loan_duration = Kernel.gets().chomp()

    if valid_number?(loan_duration)
      prompt("Must enter a positive number.")
    else
      break
    end
  end

  prompt("Calculating...")

  annual_interest_rate = interest_rate.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  loan_duration_in_months = loan_duration.to_i() * 12

  monthly_payment = loan_amount.to_f() *
                    (monthly_interest_rate / 
                    (1 - (1 + monthly_interest_rate)**
                    (-loan_duration_in_months)))
  
  total_payment = monthly_payment * loan_duration_in_months
  total_interest = total_payment - loan_amount.to_f()

  prompt("#{name}, your monthly payment is: \
        $#{format('%.2f', monthly_payment)}")
  prompt("Total of #{loan_duration_in_months} Payments: \
        $#{format('%.2f', total_payment)}")
  prompt("Total Interest: $#{format('%.2f', total_interest)}")
  prompt("-------------------------------")

  prompt("Another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator")
prompt("Have a wonderful day!")
