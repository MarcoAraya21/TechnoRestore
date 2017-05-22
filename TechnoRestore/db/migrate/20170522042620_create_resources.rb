class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.references :reparation, foreign_key: true
      t.references :product, foreign_key: true
      t.datetime :Fecha
      t.integer :Cantidad

      t.timestamps
    end
  end
end
