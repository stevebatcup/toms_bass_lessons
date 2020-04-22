# This migration comes from maawol_engine (originally 20171219145446)
class AddPublishDateToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :publish_date, :datetime
    add_column :courses, :include_in_menu, :integer, default: 0
  end
end
