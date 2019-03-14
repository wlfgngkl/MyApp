# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative 'fake.rb'
include Fake

	def fake_data(number)

	number.times do |i|
		
		gender = [:m,:f][Random.new.rand(0...2)]
	

		faker = {
			gender: gender.to_s,
			lastname: lastname,
			firstname: firstname(gender),
			dob: date(Date.new(1930,1,1), Date.new(1990,12,28)).to_s,
		}
	

		faker[:email] = email("#{faker[:firstname]}.#{faker[:lastname]}")
	

		Client.create(faker)
	
	
	

	end

end

fake_data 2000