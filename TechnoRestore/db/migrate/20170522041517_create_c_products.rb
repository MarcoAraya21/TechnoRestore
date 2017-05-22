class CreateCProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :c_products do |t|
      t.references :ptype, foreign_key: true
      t.references :cstatus, foreign_key: true
      t.references :user, foreign_key: true
      t.string :Nombre
      t.text :Descripcion
      t.string :Marca

      t.timestamps
    end
  end
end
