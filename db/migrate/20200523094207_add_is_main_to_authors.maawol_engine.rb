# This migration comes from maawol_engine (originally 20200522192722)
class AddIsMainToAuthors < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :is_main, :boolean, default: false
  end
end
