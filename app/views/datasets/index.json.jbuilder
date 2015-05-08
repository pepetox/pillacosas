json.array!(@datasets) do |dataset|
  json.extract! dataset, :id, :nombre, :html, :mi_url, :bloque, :campo1, :campo2, :campo3, :campo4, :campo5, :campo6
  json.url dataset_url(dataset, format: :json)
end
