json.array!(@actividads) do |actividad|
  json.extract! actividad, :id, :usuario_id, :actividad, :tipo
  json.url actividad_url(actividad, format: :json)
end
