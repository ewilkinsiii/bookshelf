require 'faker'

4.times do
    Author.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        yob: rand(1960..2000),
        is_alive: true
    )
end 
puts "Created 4 random authors with the last name set to Smith"

2.times do
    Author.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        yob: rand(1900..1960),
        is_alive: false
    )
end 

puts "Created 2 authors with is_alive set to false"

2.times do
Author.create!(
    first_name: Faker::Name.first_name,
    last_name: "Smith",
    yob: rand(1960..2000),
    is_alive: true
)
end

puts "Created 2 authors with the last name set to Smith"
