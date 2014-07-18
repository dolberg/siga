json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :empresa, :codigo, :pass
  json.url empresa_url(empresa, format: :json)
end
