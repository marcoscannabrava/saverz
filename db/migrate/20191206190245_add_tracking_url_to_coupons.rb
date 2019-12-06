class AddTrackingUrlToCoupons < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :tracking_url, :string
  end
end
