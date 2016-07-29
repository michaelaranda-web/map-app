class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :name
      t.float :starting_latitude
      t.float :starting_longitude

      t.timestamps null: false
    end
  end
end
