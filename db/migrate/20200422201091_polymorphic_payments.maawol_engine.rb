# This migration comes from maawol_engine (originally 20200323152401)
class PolymorphicPayments < ActiveRecord::Migration[5.2]
  def change
  	rename_table	:downloadable_payments, :product_payments
	  rename_column	:product_payments, :downloadable_id, :product_id
  end
end
