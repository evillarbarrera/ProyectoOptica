class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :Nombre
      t.string :Domicilio
      t.string :Pais
      t.integer :Telefono
      t.string :Email
      t.string :Web

      t.timestamps
    end
  end
end
