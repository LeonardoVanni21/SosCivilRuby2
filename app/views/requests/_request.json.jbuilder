json.extract! request, :id, :item, :status, :supplies_id, :quantity, :created_at, :updated_at
json.url request_url(request, format: :json)
