# frozen_string_literal: true

# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "publishers.rb"))'
puts 'Creating publishers...'

20.times do
    Publisher.create(
      name: Faker::Book.publisher
    )
  end

  puts "¡20 publishers created using Faker!"