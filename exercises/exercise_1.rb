require_relative '../setup'
require "active_record"
puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Store < ActiveRecord::Base
  validates :name, length: {minimum: 5}
  validates :annual_revenue, :numericality => { :greater_than => 0 }
  has_many :employees
end

class Employee <ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :inclusion => 60..200
  validates :store, presence: true
  belongs_to :store
end



s1 = Store.new
s1.name = "Burnaby"
s1.annual_revenue = 300000
s1.mens_apparel = true
s1.womens_apparel = true
s1.save

s2 = Store.new
s2.name = "Richmond"
s2.annual_revenue = 1260000
s2.mens_apparel = false
s2.womens_apparel = true
s2.save

s3 = Store.new
s3.name = "Gastown"
s3.annual_revenue = 190000
s3.mens_apparel = true
s3.womens_apparel = false
s3.save

puts Store.count