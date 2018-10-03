class CreateHeaderMovements < ActiveRecord::Migration[5.2]
  def change
    create_table :header_movements do |t|
      t.references :movement_types, foreign_key: true
      t.references :document_types, foreign_key: true
      t.references :header_order_of_works, foreign_key: true
      t.references :providers, foreign_key: true
      t.datetime :fecha_creacion

      t.timestamps
    end
  end
end
