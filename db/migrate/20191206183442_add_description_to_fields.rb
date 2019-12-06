class AddDescriptionToFields < ActiveRecord::Migration[5.2]
  def change
    add_column :fields, :descritption, :string
  end
end
