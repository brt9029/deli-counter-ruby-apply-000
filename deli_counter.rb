# Write your code here.
katz_deli = []
def line(katz_deli)
  # iterate through katz_deli array and puts place in line & customer
  # "The line is currently empty." if there is noone in line
  if katz_deli.length > 0
    tlc = "The line is currently:"
    katz_deli.each_with_index do |person, number|
      tlc += " #{number+1}. #{person}"
    end
    puts tlc
  else 
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, customer)
  # places customer at the end of line (array), calls the last element of the array and the length of the line (array)
  katz_deli << customer
  puts "Welcome, #{katz_deli[-1]}. You are number #{katz_deli.length} in line."
end

def now_serving(customer)
  if customer.length > 0 
    puts "Currently serving #{customer.shift}."
  else 
    puts "There is nobody waiting to be served!"
  end
end