class ChangeInsumoInsumolabore < ActiveRecord::Migration[5.2]
  def change
  	rename_column :insumolabores, :insumo_id, :producto_id
  end
end
