def multiply(first_number, second_number)
  return first_number.to_f * second_number.to_f
end

def divide(first_number, second_number)
  return first_number.to_f / second_number.to_f
end

def add(first_number, second_number)
  return first_number.to_f + second_number.to_f
end

def subtract(first_number, second_number)
  return first_number.to_f - second_number.to_f
end

puts "Hello, what is your first name?"
first_name = gets.chomp
puts "Welcome #{first_name}, great to meet you."

puts "Pick a number between 1 and 10"
a_number = gets.chomp.to_i
puts "Pick another number between 1 and 10"
b_number = gets.chomp.to_i

puts "What do you want to do 1) multiply 2) divide 3) add 4) subtract ?"
prompt = gets.chomp.to_i

if prompt == 1 # condition
  # execute logic
  puts "You have chosen to multiply and,"
  puts "#{a_number} times #{b_number} is equal to:"
  puts multiply(a_number, b_number)
elsif prompt == 2 
  puts "You have chosen to divide and,"
  puts "#{a_number} divided #{b_number} is equal to:"
  puts divide(a_number, b_number)
elsif prompt == 3
  puts "You have chosen to add and,"
  puts "#{a_number} plus #{b_number} is equal to:"
  puts add(a_number, b_number)
elsif prompt == 4
  puts "You have chosen to subtract and,"
  puts "#{a_number} subtract #{b_number} is equal to:"
  puts subtract(a_number, b_number)
else
  puts "You have chosen an invalid option!"
end