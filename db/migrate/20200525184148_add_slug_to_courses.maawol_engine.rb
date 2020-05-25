# This migration comes from maawol_engine (originally 20200525182001)
class AddSlugToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :slug, :string
  end
end
