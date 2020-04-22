# This migration comes from maawol_engine (originally 20180222103128)
class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.integer :user_id
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
