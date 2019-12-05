class RemoveColumnsFromCoupons < ActiveRecord::Migration[5.2]
  def change
    remove_column :coupons, :description
    remove_column :coupons, :discount
  end
end
