json.extract! book, :id, :title, :publication_year, :isbn, :description, :user_id, :created_at, :updated_at
json.url book_url(book, format: :json)
