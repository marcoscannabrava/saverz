class AddSlugToFields < ActiveRecord::Migration[5.2]
  def change
    add_column :fields, :slug, :string
    add_index :fields, :slug
  end
end
