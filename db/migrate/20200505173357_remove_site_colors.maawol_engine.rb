# This migration comes from maawol_engine (originally 20200504194037)
class RemoveSiteColors < ActiveRecord::Migration[6.0]
  def change
  	drop_table :site_colors
  end
end
