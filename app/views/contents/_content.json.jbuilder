json.extract! content, :id, :name, :body, :file, :created_at, :updated_at
json.url content_url(content, format: :json)
