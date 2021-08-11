puts "deleting current db"

Flat.delete_all

puts "creating db"

15.times do
  Flat.create!(
    name: Faker::Company.name,
    address: Faker::Address.street_name,
    description: ["beautiful place", "cozy place", "friendly neighborhood"].sample,
    price_per_night: rand(100..599),
    number_of_guests: rand(1..12)

  )
end

puts "db created #{Flat.count}"
