class CreateCStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :c_statuses do |t|
      t.string :Nombre

      t.timestamps
    end
  end
end
