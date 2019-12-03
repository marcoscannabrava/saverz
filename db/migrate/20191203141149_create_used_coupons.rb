class CreateUsedCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :used_coupons do |t|
      t.float :saverz_money

      t.timestamps
    end
  end
end
