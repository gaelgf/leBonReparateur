class CreateModeleTelephones < ActiveRecord::Migration
  def change
    create_table :modele_telephones do |t|
      t.string :nom

      t.timestamps null: false
    end
  end
end
