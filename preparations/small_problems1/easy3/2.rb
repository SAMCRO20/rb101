# Arithmetic Integer

def clear_screen
  system('clear')
end

def prompt(str)
  puts "==> #{str}"
end

clear_screen

prompt("Enter the first number:")
first_number = gets.chomp.to_i

clear_screen

prompt("Enter the second number:")
second_number = gets.chomp.to_i

prompt("Running calculations...")
sleep(1)
 
clear_screen

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number ** second_number}")

# operators = %w(+ - * / % **)

# def prompt(msg)
#   puts "==> #{msg}"
# end

# prompt "Enter the first number:"
# num1 = gets.to_i

# prompt "Enter the second number:"
# num2 = gets.to_i

# def display_output(op, num1, num2)
#   op.each do |sign|
#     prompt "#{num1} #{sign} #{num2} = #{calculate(sign, num1, num2)}"
#   end
# end

# def calculate(opr, num1, num2)
#   case opr
#     when "+" then num1 + num2
#     when "*" then num1 * num2
#     when "/" then num1 / num2
#     when "-" then num1 - num2
#     when '%' then num1 % num2
#     when "**" then num1 ** num2
#     end
# end

# display_output(operators, num1, num2)