json.array!(@ventas) do |venta|
  json.extract! venta, :id, :producto_id, :cantidad, :montobruto, :costoflete, :costocomercial, :comprador
  json.url venta_url(venta, format: :json)
end
