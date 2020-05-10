# This migration comes from maawol_engine (originally 20200510095548)
class AddSlugToSiteSettings < ActiveRecord::Migration[6.0]
  def change
    add_column :site_settings, :slug, :string

    SiteSetting.all.each do |setting|
    	setting.update(slug: setting.name.parameterize)
    end
  end
end
