class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.references :sale, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :Cantidad

      t.timestamps
    end
  end
end
