# frozen_string_literal: true

# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "genres.rb"))'
puts 'Creating contacts...'



# Crea un conjunto para almacenar los géneros literarios únicos
unique_genres = Set.new

# Usa un bucle while para generar géneros únicos
while unique_genres.length < 10 do
  genre_name = Faker::Book.genre
  unless unique_genres.include?(genre_name)
    unique_genres.add(genre_name)
    Genre.create(name: genre_name)
  end
end

puts "¡Se crearon 10 géneros literarios únicos usando Faker!"
