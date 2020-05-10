# This migration comes from maawol_engine (originally 20200428123845)
class AddThumbnailToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :thumbnail, :string
  end
end
