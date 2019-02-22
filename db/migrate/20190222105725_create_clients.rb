class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :firstname
      t.string :lastname
      t.date :dob
      t.string :gender
      t.string :email
      t.string :phone
      t.text :notifications

      t.timestamps
    end
  end
end
