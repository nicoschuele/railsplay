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

  company = Company.new(
    name: name,
    slogan: Faker::Company.catch_phrase,
    mission_statement: Faker::Company.bs,
    street: Faker::Address.street_address,
    zip_code: Faker::Address.zip_code,
    city: Faker::Address.city,
    country: Faker::Address.country,
    revenue: Random.rand(100)
  )
  company.save!

  puts "#{i} companies created..." if i % 10 == 0
end

# Seed Categories
puts
(1..10).each do |i|
  name = Faker::Commerce.department
  while(!unique_fake?(name, Category, :name))
    name = Faker::Commerce.department
  end

  category = Category.new(
    name: name,
    description: Faker::Hipster.sentence
  )
  category.save!

  puts "#{i} categories created..." if i % 2 == 0
end

# Seed Products
puts
categories_count = Category.count
(1..100).each do |i|
  name = Faker::Commerce.product_name
  while(!unique_fake?(name, Category, :name))
    name = Faker::Commerce.product_name
  end

  product = Product.new(
    name: name,
    description: Faker::Lorem.sentence,
    price: Faker::Commerce.price,
    category_id: Random.rand(categories_count) + 1
  )
  product.save!

  puts "#{i} products created..." if i % 10 == 0
end
