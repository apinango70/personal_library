json.extract! author, :id, :name, :nationality, :biography, :created_at, :updated_at
json.url author_url(author, format: :json)
