# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Job.create(name: FFaker::Food.fruit, start_date: '02.01.2017', end_date: '04.01.2017')
User.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, email: FFaker::Internet.email)

user1 = User.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, email: FFaker::Internet.email)
Profile.create(user_id: user1, phone_number: FFaker::PhoneNumber.short_phone_number, accepted_at: nil)


user2 = User.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, email: FFaker::Internet.email)
Profile.create(user_id: user2, phone_number: FFaker::PhoneNumber.short_phone_number, accepted_at: Date.today)
Availability.create(user_id: user2, day_off: nil)

user3 = User.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, email: FFaker::Internet.email)
Profile.create(user_id: user3, phone_number: FFaker::PhoneNumber.short_phone_number, accepted_at: Date.today)
Availability.create(user_id: user3, day_off: ['01.01.2017', '05.01.2017'])

user4 = User.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, email: FFaker::Internet.email)
Profile.create(user_id: user4, phone_number: FFaker::PhoneNumber.short_phone_number, accepted_at: Date.today)
Availability.create(user_id: user4, day_off: ['02.01.2017', '10.01.2017'])

