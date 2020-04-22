# This migration comes from maawol_engine (originally 20170815140020)
class AddSlugToTags < ActiveRecord::Migration[5.0]
  def change
    add_column :tags, :slug, :string
    add_index	:tags, :slug
  end
end
