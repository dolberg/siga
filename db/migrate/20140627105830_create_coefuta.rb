class CreateCoefuta < ActiveRecord::Migration[5.2]
  def change
    create_table :coefuta do |t|
      t.references :empresa, index: true
      t.string :labor
      t.float :coef

      t.timestamps
    end
  end
end
