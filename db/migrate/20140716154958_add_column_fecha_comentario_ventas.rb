class AddColumnFechaComentarioVentas < ActiveRecord::Migration
  def change
  	add_column :ventas,:comentario, :text
  	add_column :ventas, :fecha, :date
  end
end
