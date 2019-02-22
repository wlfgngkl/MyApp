class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :[firstname
      t.string] :[
      t.string :lastname
      t.string] :[
      t.string :dob
      t.date] :[
      t.string :gender
      t.string] :[
      t.string :email
      t.string] :[
      t.string :phone
      t.string] :[
      t.string :notifications
      t.text] :[

      t.timestamps
    end
  end
end
