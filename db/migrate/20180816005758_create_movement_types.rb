class CreateMovementTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :movement_types do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
