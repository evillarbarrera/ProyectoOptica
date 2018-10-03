class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :cod_producto
      t.string :nombre
      t.string :marca
      t.string :color
      t.string :medidas
      t.integer :vigente

      t.timestamps
    end
  end
end
