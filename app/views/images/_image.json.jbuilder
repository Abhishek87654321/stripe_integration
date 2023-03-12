json.extract! image, :id, :data_url, :created_at, :updated_at
json.url image_url(image, format: :json)
