json.array!(@compra_insumos) do |compra_insumo|
  json.extract! compra_insumo, :id, :usuario_id, :comprobante, :insumo_id, :marca, :cant_fac, :cant_rem, :monto
  json.url compra_insumo_url(compra_insumo, format: :json)
end
