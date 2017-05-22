class CreatePCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :p_categories do |t|
      t.string :Nombre

      t.timestamps
    end
  end
end
