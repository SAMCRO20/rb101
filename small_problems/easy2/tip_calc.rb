bill = nil
tip_raw = nil

def tip_calculator
  loop do
    puts ">> What is the total of the bill before tax? "
    print "> "
    bill = gets.chomp.to_f
    
    puts ">> What percentage are you willing to tip today? "
    print "> "
    tip_raw = gets.chomp.to_f
    tip_decimal = tip_raw / 100

    tip = (bill * tip_decimal).round(2)
    total = bill + tip

    if bill.positive? && tip_raw.positive?
      puts "For this bill, a tip of #{tip_raw}% is $#{tip.round(2)}."
      puts "So, your total out of the door will be $#{total.round(2)}."
      break
    else
      puts "... Let's try this again."
    end
  end
end

tip_calculator