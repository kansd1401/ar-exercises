require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...


total_income = Store.sum(:annual_revenue)
num_of_stores = Store.count
big_stores = Store.where("annual_revenue > ?", 1000000).count
p total_income
p total_income/num_of_stores
p big_stores  