class CreateCoefuta < ActiveRecord::Migration
  def change
    create_table :coefuta do |t|
      t.references :empresa, index: true
      t.string :labor
      t.float :coef

      t.timestamps
    end
  end
end
