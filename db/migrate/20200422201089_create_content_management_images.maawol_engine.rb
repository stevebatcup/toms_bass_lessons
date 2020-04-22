# This migration comes from maawol_engine (originally 20200220174129)
class CreateContentManagementImages < ActiveRecord::Migration[5.2]
  def change
    create_table :cms_images do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
