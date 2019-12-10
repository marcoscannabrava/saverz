class AddBioToResearcher < ActiveRecord::Migration[5.2]
  def change
    add_column :researchers, :bio, :text
  end
end
