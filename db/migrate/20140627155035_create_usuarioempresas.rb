class CreateUsuarioempresas < ActiveRecord::Migration
  def change
    create_table :usuarioempresas do |t|
      t.references :usuario, index: true
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
