json.extract! book, :id, :title, :content, :category_id, :created_at, :updated_at
json.url book_url(book, format: :json)
