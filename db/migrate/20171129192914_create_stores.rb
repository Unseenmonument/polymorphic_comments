class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :location
      t.string :founded
      t.text :bio

      t.timestamps null: false
    end
  end
end
