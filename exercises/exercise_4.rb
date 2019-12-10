require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

s1 = Store.new
s1.name = "Surrey"
s1.annual_revenue = 224000
s1.mens_apparel = false
s1.womens_apparel = true
s1.save

s2 = Store.new
s2.name = "Whistler"
s2.annual_revenue = 1900000
s2.mens_apparel = true
s2.womens_apparel = false
s2.save

s3 = Store.new
s3.name = "Yaletown"
s3.annual_revenue = 430000
s3.mens_apparel = true
s3.womens_apparel = false
s3.save

puts Store.count

@mens_stores = Store.where(mens_apparel: true,womens_apparel: false)
@womens_stores = Store.where(mens_apparel: false,womens_apparel: true).where("annual_revenue > ?", 1000000)

@mens_stores.each { |x| puts "#{x.name}: Income is #{x.annual_revenue}" }
@womens_stores.each { |x| puts "#{x.name}: Income is #{x.annual_revenue}" }
