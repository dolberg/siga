class ChangeProductoInsumolab3ro < ActiveRecord::Migration
  def change
  	rename_column :insumolab3ros, :producto_i, :producto_id
  end
end
