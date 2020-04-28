# This migration comes from maawol_engine (originally 20200428101814)
class CreateAudioFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :audio_files do |t|
      t.string :name
      t.string :file
      t.integer :author_id

      t.timestamps
    end
  end
end
