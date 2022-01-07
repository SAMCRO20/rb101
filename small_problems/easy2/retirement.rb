retirement_age = nil
age = nil

def retirement_calc
  loop do
    puts ">> What is your age? "
    print "> "
    age = gets.chomp.to_i
    puts ">> At what age would you see yourself retiring? "
    print "> "
    retirement_age = gets.chomp.to_i

    remaining_work_years = retirement_age - age
    current_year = Time.now.year
    
    if age.positive? && retirement_age > age
      puts "It is #{current_year}, so you will retire in #{current_year + remaining_work_years}."
      puts "Just #{remaining_work_years} years left of work to go! Hooray!"
      break
    else
      puts "... let's try this again."
      next
    end
  end
end

retirement_calc