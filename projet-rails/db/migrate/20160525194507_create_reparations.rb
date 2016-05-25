class CreateReparations < ActiveRecord::Migration
  def change
    create_table :reparations do |t|
      t.string :name
      t.integer :prix

      t.timestamps null: false
    end
  end
end
