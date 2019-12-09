class ChangeProductoInsumolab3ro < ActiveRecord::Migration[5.2]
  def change
  	rename_column :insumolab3ros, :producto_i, :producto_id
  end
end
