json.array!(@products) do |product|
  json.extract! product, :id, :name, :code, :provider_id, :marck, :modelo, :amount, :purchase_value, :sale_value, :description, :active, :data
  json.url product_url(product, format: :json)
end
