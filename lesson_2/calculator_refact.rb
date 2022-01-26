# calculator_refact.rb

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages_refact.yml')

LANG = :en

def clear_screen
  system('clear')
end

def prompt(action, value=' ')
  puts "=> #{MESSAGES[LANG][action]} #{value}"
end

def valid_number?(num)
  true if num.to_i.to_s == num || num.to_f.to_s == num
end

def operation_to_message(op)
  puts "=> #{MESSAGES[LANG][:operation][op.to_i - 1]} "\
  "#{MESSAGES[LANG][:op_predicate]}"
end

clear_screen

prompt(:welcome)
name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(:valid_name)
  else
    break
  end
end

prompt(:name, name + '!')
sleep 1

loop do
  number1 = ''
  loop do
    prompt(:first)
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt(:valid_number)
    end
  end

  number2 = ''
  loop do
    prompt(:second)
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt(:valid_number)
    end
  end

  clear_screen

  operator = ''
  loop do
    prompt(:op)
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(:op_error)
    end
  end

  operation_to_message(operator)
  print " ."
  sleep 1
  print " ."
  sleep 1
  print "\n"

  case operator
  when '1'
    result = number1.to_f + number2.to_f
  when '2'
    result = number1.to_f - number2.to_f
  when '3'
    result = number1.to_f * number2.to_f
  when '4'
    result = number1.to_f / number2.to_f
  end

  prompt(:result, result)

  prompt(:again)
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

  clear_screen
end

prompt(:thanks)
