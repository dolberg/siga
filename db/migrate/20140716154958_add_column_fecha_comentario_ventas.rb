class AddColumnFechaComentarioVentas < ActiveRecord::Migration[5.2]
  def change
  	add_column :ventas,:comentario, :text
  	add_column :ventas, :fecha, :date
  end
end
