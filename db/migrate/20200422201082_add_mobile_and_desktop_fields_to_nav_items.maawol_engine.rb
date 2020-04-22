# This migration comes from maawol_engine (originally 20200217125524)
class AddMobileAndDesktopFieldsToNavItems < ActiveRecord::Migration[5.2]
  def change
  	add_column	:cms_navbar_items, :desktop, :boolean, default: true, after: :sort
  	add_column	:cms_navbar_items, :mobile, :boolean, default: true, after: :desktop
  end
end
