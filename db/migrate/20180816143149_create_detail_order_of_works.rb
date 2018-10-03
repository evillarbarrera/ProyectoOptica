class CreateDetailOrderOfWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :detail_order_of_works do |t|
      t.references :header_order_of_work, foreign_key: true
      t.string :cod_ojo
      t.string :cod_cercania
      t.string :esf
      t.string :cil
      t.string :eje
      t.string :dip
      t.string :altura
      t.string :cb
      t.string :diam
      t.references :products, foreign_key: true
      t.string :observaciones

      t.timestamps
    end
  end
end
