# This migration comes from maawol_engine (originally 20180209161003)
class AddFromOldSiteToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :from_old_site, :boolean, default: false
  end
end
