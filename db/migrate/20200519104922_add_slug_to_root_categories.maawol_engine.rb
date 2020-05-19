# This migration comes from maawol_engine (originally 20200518145825)
class AddSlugToRootCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :root_categories, :slug, :string
  end
end
