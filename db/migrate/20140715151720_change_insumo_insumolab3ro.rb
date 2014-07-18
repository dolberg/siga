class ChangeInsumoInsumolab3ro < ActiveRecord::Migration
  def change
  	rename_column :insumolab3ros, :insumo_id, :producto_i
  end
end
