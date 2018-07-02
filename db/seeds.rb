# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, dob: Faker::Date.birthday(18, 60), company: Faker::Company.name, company_logo: "default_image.png", password: "test123", email:"user@domain.com")



Project.create(client_id: 1, name: Faker::App.name, description: Faker::Lorem.paragraphs(1), hours: 2)

Client.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, company: Faker::Company.name, address: Faker::Address.street_address, city: Faker::Address.city_prefix, state: Faker::Address.state_abbr, zipcode: Faker::Address.zip_code, email:"bob@domain.com", phone: Faker::PhoneNumber.phone_number, project_id: 1)