class AddMomentoLabores < ActiveRecord::Migration[5.2]
  def change
  	add_column :labors, :momento, :string
  end
end
