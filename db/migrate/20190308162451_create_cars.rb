class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :color
      t.integer :hp
      t.string :typeof

      t.timestamps
    end
  end
end
