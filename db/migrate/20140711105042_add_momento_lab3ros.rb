class AddMomentoLab3ros < ActiveRecord::Migration[5.2]
  def change
  	add_column :lab3ros, :momento, :string
  end
end
