class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :ptype, foreign_key: true
      t.references :pcategory, foreign_key: true
      t.references :status, foreign_key: true
      t.string :Nombre
      t.text :Descripcion
      t.integer :Precio
      t.integer :Stock
      t.string :Marca

      t.timestamps
    end
  end
end
