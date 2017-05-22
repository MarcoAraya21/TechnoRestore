class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.references :user, foreign_key: true
      t.datetime :Fecha
      t.integer :Total

      t.timestamps
    end
  end
end
