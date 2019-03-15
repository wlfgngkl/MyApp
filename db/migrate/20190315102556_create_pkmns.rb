class CreatePkmns < ActiveRecord::Migration[5.2]
  def change
    create_table :pkmns do |t|
      t.string :gen
      t.string :name
      t.string :typ1
      t.string :typ2

      t.timestamps
    end
  end
end
