# This migration comes from maawol_engine (originally 20200323155428)
class ConvertPermissions < ActiveRecord::Migration[5.2]
  def change
  	rename_table	:downloadable_permissions, :product_permissions
  	rename_column	:product_permissions, :downloadable_id, :product_id
  end
end
