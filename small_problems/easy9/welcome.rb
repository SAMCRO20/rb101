def greetings(name, status)
  "Hello, #{name.join(' ')}! Nice to have a #{status[:title]} #{status[:occupation]} around."
end

# def greetings(array, hash)
#   name = array.join(' ')
#   title = "#{hash[:title]} #{hash[:occupation]}"
#   "=> Hello, #{name}! Nice to have a #{title} around."
# end

p greetings(%w[John Q Doe], title: 'Master', occupation: 'Plumber')
# => Hello, John Q Doe! Nice to have a Master Plumber around.
