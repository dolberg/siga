json.array!(@loteactividads) do |loteactividad|
  json.extract! loteactividad, :id, :usuario_id, :campo_id, :lote_id, :actividad_id
  json.url loteactividad_url(loteactividad, format: :json)
end
