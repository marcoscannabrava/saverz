class CreateResearchers < ActiveRecord::Migration[5.2]
  def change
    create_table :researchers do |t|
      t.string :full_name
      t.string :university
      t.string :lattes_link
      t.string :photo

      t.timestamps
    end
  end
end
