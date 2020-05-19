# This migration comes from maawol_engine (originally 20200519084640)
class AddSlugToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :slug, :string
  end
end
