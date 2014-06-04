class AddPrecioToInsumolabore < ActiveRecord::Migration
  def change
    add_column :insumolabores, :precio, :decimal
  end
end
