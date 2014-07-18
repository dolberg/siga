class ChangeInsumoCompraInsumos < ActiveRecord::Migration
  def change
  	rename_column :compra_insumos, :insumo_id, :producto_id
  end
end
