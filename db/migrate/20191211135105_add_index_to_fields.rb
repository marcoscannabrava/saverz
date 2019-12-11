class AddIndexToFields < ActiveRecord::Migration[5.2]
  def change
    add_column :fields, :index, :integer
  end
end
