json.array!(@lab3ros) do |lab3ro|
  json.extract! lab3ro, :id, :usuario_id, :fecha, :campo_id, :lote_id, :superficie, :labor, :costo, :comentario
  json.url lab3ro_url(lab3ro, format: :json)
end
