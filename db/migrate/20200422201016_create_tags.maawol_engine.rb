# This migration comes from maawol_engine (originally 20170627123127)
class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :name
      t.timestamps
    end

    create_table :lessons_tags, id: false do |t|
    	t.belongs_to :lesson, index: true
      t.belongs_to :tag, index: true
    end

  end
end
