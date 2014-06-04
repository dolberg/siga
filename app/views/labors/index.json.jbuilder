json.array!(@labors) do |labor|
  json.extract! labor, :id, :usuario_id, :fecha, :campo_id, :lote_id, :superficie, :coefutum_id, :comentario
  json.url labor_url(labor, format: :json)
end
