# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  Employee.create!(email: "emp#{i}@email.com", password: "secret#{i}")
end

3.times do |i|
  Kudo.create!(title: "Seed #{i}", content: "Content #{i}", giver: Employee.find_by!(email: "emp#{i}@email.com"), receiver: Employee.find_by!(email: "emp#{i + 1}@email.com"))
end