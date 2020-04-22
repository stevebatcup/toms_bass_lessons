# This migration comes from maawol_engine (originally 20200123143108)
class CreateSiteSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :site_settings do |t|
      t.string :name
      t.string :value
    end
  end
end
