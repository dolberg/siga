json.array!(@productos) do |producto|
  json.extract! producto, :id, :empresa_id, :producto, :saldoinicial, :precioinicial, :preciofinal, :unidad
  json.url producto_url(producto, format: :json)
end
