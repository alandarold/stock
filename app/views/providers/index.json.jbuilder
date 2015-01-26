json.array!(@providers) do |provider|
  json.extract! provider, :id, :name, :cnpj, :phone_one, :phone_two, :address, :district, :city_id, :state, :email, :description, :data_record
  json.url provider_url(provider, format: :json)
end
