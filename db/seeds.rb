# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'
require 'pry'

# new_customers = []



CSV.foreach('member_id.csv') do |row|
  User.all.each do |user|
    if user.member_id == row[0]
      user.update_attributes!(product_code: row[1])
    end
  end
end

