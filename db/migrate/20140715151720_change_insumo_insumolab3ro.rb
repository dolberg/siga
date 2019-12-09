class ChangeInsumoInsumolab3ro < ActiveRecord::Migration[5.2]
  def change
  	rename_column :insumolab3ros, :insumo_id, :producto_i
  end
end
