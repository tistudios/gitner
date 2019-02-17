json.extract! business_entity, :id, :title, :url, :name, :founded, :created_at, :updated_at
json.url business_entity_url(business_entity, format: :json)
