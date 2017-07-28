json.extract! content, :id, :body, :title, :order, :created_at, :updated_at
json.url content_url(content, format: :json)
