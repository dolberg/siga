class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :empresa
      t.string :codigo
      t.string :pass

      t.timestamps
    end
  end
end
