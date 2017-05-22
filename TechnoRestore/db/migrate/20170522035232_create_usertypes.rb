class CreateUsertypes < ActiveRecord::Migration[5.0]
  def change
    create_table :usertypes do |t|
      t.string :Nombre

      t.timestamps
    end
  end
end
