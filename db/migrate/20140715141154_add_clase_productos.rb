class AddClaseProductos < ActiveRecord::Migration
  def change
  	add_column :productos, :clase, :string
  end
end
