class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :nombre
      t.string :direccion
      t.integer :telefono
      t.string :web

      t.timestamps
    end
  end
end
