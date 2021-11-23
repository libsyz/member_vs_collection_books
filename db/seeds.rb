

puts "creating books..."

Book.destroy_all

20.times do
  Book.create(title: Faker::Book.title, #=> "The Odd Sister"
              author: Faker::Book.author,
              year: rand(1700..2020)
            )
end



puts "#{Book.count} books created!"
