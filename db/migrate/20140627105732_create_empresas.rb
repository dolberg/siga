class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.string :empresa
      t.string :codigo
      t.string :pass

      t.timestamps
    end
  end
end
