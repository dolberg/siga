class AddClaseProductos < ActiveRecord::Migration[5.2]
  def change
  	add_column :productos, :clase, :string
  end
end
