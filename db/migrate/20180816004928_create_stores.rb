class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :nombre
      t.string :direccion
      t.integer :telefono
      t.string :email
      t.references :companies, foreign_key: true

      t.timestamps
    end
  end
end
