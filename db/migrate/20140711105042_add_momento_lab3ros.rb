class AddMomentoLab3ros < ActiveRecord::Migration
  def change
  	add_column :lab3ros, :momento, :string
  end
end
