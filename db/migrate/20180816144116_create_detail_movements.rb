class CreateDetailMovements < ActiveRecord::Migration[5.2]
  def change
    create_table :detail_movements do |t|
      t.references :header_movements, foreign_key: true
      t.references :products, foreign_key: true
      t.integer :precio_unitario
      t.integer :cantidad
      t.integer :total

      t.timestamps
    end
  end
end
