json.array!(@coefuta) do |coefutum|
  json.extract! coefutum, :id, :usuario_id, :labor, :coef
  json.url coefutum_url(coefutum, format: :json)
end
