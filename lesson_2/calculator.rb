# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message)
  MESSAGES[message]
end

def prompt(key)
  message = messages(key)

  Kernel.puts("=> #{message}")
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  result = case op
           when '1'
             puts '=> ' + messages('add')
           when '2'
             puts '=> ' + messages('subtract')
           when '3'
             puts '=> ' + messages('multiply')
           when '4'
             puts '=> ' + messages('divide')
           end

  result
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("valid_name")
  else
    break
  end
end

prompt("name")
puts name + '?!'

loop do # main loop
  number1 = ''
  number2 = ''

  loop do
    prompt("first")
    number1 = gets.chomp

    if number?(number1)
      break
    else
      prompt("valid_number")
    end
  end

  loop do
    prompt("second")
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt("valid_number")
    end
  end

  prompt('operation')

  operator = ""
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("choice")
    end
  end
  operation_to_message(operator)

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("result")
  puts result

  prompt("again")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("thanks")