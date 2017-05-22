class CreateReparations < ActiveRecord::Migration[5.0]
  def change
    create_table :reparations do |t|
      t.references :user, foreign_key: true
      t.references :cproduct, foreign_key: true
      t.text :Description
      t.datetime :FechaI
      t.datetime :FechaF
      t.integer :PrecioBase
      t.integer :PrecioFinal

      t.timestamps
    end
  end
end
