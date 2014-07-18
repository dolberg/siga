json.array!(@usuarioempresas) do |usuarioempresa|
  json.extract! usuarioempresa, :id, :usuario_id, :empresa_id
  json.url usuarioempresa_url(usuarioempresa, format: :json)
end
