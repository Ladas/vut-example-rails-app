json.array!(@services) do |service|
  json.extract! service, :type, :company, :contact, :phone, :email, :description, :price, :price_with_vat, :payed
  json.url service_url(service, format: :json)
end
