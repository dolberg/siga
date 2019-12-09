class ChangeInsumoCompraInsumos < ActiveRecord::Migration[5.2]
  def change
  	rename_column :compra_insumos, :insumo_id, :producto_id
  end
end
