class CreateCoefuta < ActiveRecord::Migration
  def change
    create_table :coefuta do |t|
      t.references :usuario, index: true
      t.string :labor
      t.decimal :coef

      t.timestamps
    end
  end
end
