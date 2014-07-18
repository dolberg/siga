class ChangeInsumoInsumolabore < ActiveRecord::Migration
  def change
  	rename_column :insumolabores, :insumo_id, :producto_id
  end
end
