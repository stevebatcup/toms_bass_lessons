# This migration comes from maawol_engine (originally 20200518141826)
class CreateCategoriesCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :categories_courses do |t|
      t.belongs_to :category, index: true
    	t.belongs_to :course, index: true
    end
  end
end
