class AddUserIdToWeights < ActiveRecord::Migration[5.0]
  def change
    add_column :weights, :user_id, :integer
    add_index :weights, :user_id
  end
end
