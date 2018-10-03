class CreateHeaderOrderOfWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :header_order_of_works do |t|
      t.references :user, foreign_key: true
      t.datetime :fecha_ingres
      t.datetime :fecha_entrega
      t.string :horas
      t.integer :acuenta
      t.integer :saldo
      t.integer :total
      t.integer :flag_entregado

      t.timestamps
    end
  end
end
