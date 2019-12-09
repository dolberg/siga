class CreateUsuarioempresas < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarioempresas do |t|
      t.references :usuario, index: true
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
