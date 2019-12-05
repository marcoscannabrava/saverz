class AddZanoxIdToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :zanox_id, :integer
  end
end
