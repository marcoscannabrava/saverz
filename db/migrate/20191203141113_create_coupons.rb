class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.string :title
      t.text :description
      t.string :discount
      t.string :code
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
