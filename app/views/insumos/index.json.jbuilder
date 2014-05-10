json.array!(@insumos) do |insumo|
  json.extract! insumo, :id, :usuario_id, :producto, :salin, :precin, :precfin
  json.url insumo_url(insumo, format: :json)
end
