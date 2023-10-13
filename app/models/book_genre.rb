class BookGenre < ApplicationRecord
  belongs_to :book
  belongs_to :genres
end
