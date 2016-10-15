# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def unique_fake?(fake, model, field)
  model.where("#{field} = ?", fake).empty?
end

# Seed Companies
(1..50).each do |i|
  name = Faker::Company.name
  while(!unique_fake?(name, Company, :name))
    name = Faker::Company.name
  end

  c = Company.new(
    name: name,
    slogan: Faker::Company.catch_phrase,
    mission_statement: Faker::Company.bs,
    street: Faker::Address.street_address,
    zip_code: Faker::Address.zip_code,
    city: Faker::Address.city,
    country: Faker::Address.country,
    revenue: Random.rand(100)
  )
  c.save!

  puts "#{i} companies created..." if i % 10 == 0
end
