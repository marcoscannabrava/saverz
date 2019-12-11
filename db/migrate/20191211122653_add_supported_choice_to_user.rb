class AddSupportedChoiceToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :researcher, foreign_key: true
  end
end
