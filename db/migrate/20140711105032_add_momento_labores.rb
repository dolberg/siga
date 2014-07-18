class AddMomentoLabores < ActiveRecord::Migration
  def change
  	add_column :labors, :momento, :string
  end
end
