class CreatePannes < ActiveRecord::Migration
  def change
    create_table :pannes do |t|
      t.string :nom
      t.string :description

      t.timestamps null: false
    end
  end
end
