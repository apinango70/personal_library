# frozen_string_literal: true

# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "authors.rb"))'
puts 'Creating 20 authors...'

20.times do
  Author.create(
    name: Faker::Name.name,
    nationality: Faker::Address.country,
    biography: Faker::Lorem.paragraphs(number: 3).join("\n")
  )
end

puts "¡20 authors created using Faker!"
